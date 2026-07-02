select * from movie;
select mtitle from movie;
select myear from movie where mtitle = 'Casablanca';
select myear,mtitle from movie where myear>1950;
select myear,mtitle from movie where myear between 1955 and 1965;
select mtitle from movie where mtitle like '%falcon' or mtitle like '%maltese';
select * from person;
select * from person order by pname asc;
select * from person order by pname desc;
select * from person order by pdob asc;
select * from person order by pdob desc;
select distinct myear from movie;
select * from movie limit 0,2;
select count(*) from movie;

select pname, DATE_FORMAT (pdob,'%w %d %M %y') from person;

select pname from person where (year(NOW())-YEAR (pdob))>100;

select pname ,(year(NOW())-YEAR (pdob)) from person;
select * from person GROUP BY pgender;
select pgender ,count(pgender) from person GROUP BY pgender;

select * from role;
select mid,count(pid) from role GROUP BY mid;
select * from movie, role where movie.mid = role.mid;
select * from movie left join on movie.mid = role.mid;
select * from movie right join on movie.mid = role.mid;

SELECT pid  FROM person WHERE pname ='Cary Grant';
SELECT mid  FROM role WHERE part = 'A' and pid = '2';

SELECT mid  FROM role WHERE pid = (SELECT pid FROM person WHERE pname = 'Cary Grant');




