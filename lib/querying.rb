def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
    FROM books 
    WHERE books.series_id =1 
    ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
    FROM characters
    ORDER BY LENGTH(characters.motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
    FROM characters
    GROUP BY characters.species 
    ORDER BY characters.species DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
    FROM authors
    JOIN subgenres, series
    WHERE authors.id = series.author_id and subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title 
    FROM series
    JOIN books, characters_books, characters
    ON series.id = books.series_id and book.id = characters_books.book_id, characters_books.character_id = characters.id
    WHERE characters.species = \"human\"
    GROUP BY series.title 
    ORDER BY COUNT(\*) DESC
    "
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
