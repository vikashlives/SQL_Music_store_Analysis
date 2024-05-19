create table album(
	album_id INT,
	title varchar(200),
	artist_id INT
);

ALTER TABLE album
ALTER COLUMN title TYPE varchar(200);

Copy album
from 'F:\DB\music store data\music store data\album.csv'
delimiter ','
csv header

create table artist(
	artist_id INT,
	name varchar(200)

)
Copy artist
from 'F:\DB\music store data\music store data\artist.csv'
delimiter ','
csv header

create table customer(
	customer_id	int,
	first_name varchar(100),
	last_name varchar(100),
	company	varchar(200),
	address	varchar(200),
	city varchar(100),	
	state varchar(50),
	country	varchar(100),
	postal_code	varchar(50),
	phone varchar(100),
	fax	varchar(100),
	email varchar(100),
	support_rep_id int
)
Copy customer
from 'F:\DB\music store data\music store data\customer.csv'
delimiter ','
csv header

create table employee(
	employee_id	INT,
	last_name varchar(50),
	first_name varchar(50),	
	title varchar(100),
	reports_to int,
	levels varchar(10),
	birthdate date,
	hire_date date,
	address	varchar(200),
	city varchar(100),	
	state varchar(50),
	country	varchar(100),
	postal_code	varchar(50),
	phone varchar(100),
	fax	varchar(100),
	email varchar(100)

)

DATETIME

ALTER TABLE employee
ALTER COLUMN birthdate TYPE TIMESTAMP;

ALTER TABLE employee
ALTER COLUMN hire_date TYPE TIMESTAMP;


Copy employee
from 'F:\DB\music store data\music store data\employee.csv'
delimiter ','
csv header


create table genre(
    genre_id int,
	name varchar(100)

);

Copy genre
from 'F:\DB\music store data\music store data\genre.csv'
delimiter ','
csv header

create table invoice(
    invoice_id int,	
	customer_id	int,
	invoice_date TIMESTAMP,	
	billing_address varchar(200),
	billing_city varchar(100),
	billing_state varchar(100),
	billing_country	varchar(100),
	billing_postal_code	varchar(50),
	total FLOAT

);

Copy invoice
from 'F:\DB\music store data\music store data\invoice.csv'
delimiter ','
csv header

create table invoice_line(
	invoice_line_id int,
	invoice_id int,
	track_id int,
	unit_price float,
	quantity int

);

Copy invoice_line
from 'F:\DB\music store data\music store data\invoice_line.csv'
delimiter ','
csv header


create table media_type(
	media_type_id int,	
	name varchar(70)
);
copy media_type
from 'F:\DB\music store data\music store data\media_type.csv'
delimiter ','
csv header

create table playlist(
	playlist_id	int,
	name varchar(70)
);

copy playlist
from 'F:\DB\music store data\music store data\playlist.csv'
delimiter ','
csv header

create table playlist_track(
	playlist_id int,
	track_id int

);

copy playlist_track
from 'F:\DB\music store data\music store data\playlist_track.csv'
delimiter ','
csv header

create table track(
	track_id int,
	name varchar(500),
	album_id int,
	media_type_id int,	
	genre_id int,
	composer varchar(500),
	milliseconds int,
	bytes int,
	unit_price float

);
copy track
from 'F:\DB\music store data\music store data\track.csv'
delimiter ','
csv header



