# NOTE :- In this context, it's important to note that the table names used in the examples include underscores and numbers, 
# which differ from the naming conventions used in the LeetCode problem.

Create table If Not Exists Activity_7
(
player_id int, 
device_id int, 
event_date date, 
games_played int
);

Truncate table Activity_7;
insert into Activity_7 (player_id, device_id, event_date, games_played) values ('1', '2', '2016-03-01', '5');
insert into Activity_7 (player_id, device_id, event_date, games_played) values ('1', '2', '2016-05-02', '6');
insert into Activity_7 (player_id, device_id, event_date, games_played) values ('2', '3', '2017-06-25', '1');
insert into Activity_7 (player_id, device_id, event_date, games_played) values ('3', '1', '2016-03-02', '0');
insert into Activity_7 (player_id, device_id, event_date, games_played) values ('3', '4', '2018-07-03', '5');

/**
Q. Write an SQL query to report the first login date for each player.

Example 1:
Input: 
Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-05-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+
Output: 
+-----------+-------------+
| player_id | first_login |
+-----------+-------------+
| 1         | 2016-03-01  |
| 2         | 2017-06-25  |
| 3         | 2016-03-02  |
+-----------+-------------+
**/

SELECT * FROM Activity_7;

SELECT player_id, MIN(event_date) AS first_login 
FROM Activity_7
GROUP BY player_id;
