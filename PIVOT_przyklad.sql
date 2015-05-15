select DCECHAID, DDOTYCZYID , Max(DWARTOSC) 
from pewartcech 
where ddotyczytyp = -1 and dcechaid in (210,212)
group by DCECHAID, DDOTYCZYID

select DDOTYCZYID , 
	[210] , 
	[212]
from 
( select DDOTYCZYID,DCECHAID ,DWARTOSC from pewartcech where ddotyczytyp = -1 and dcechaid in (210,212)) p
PIVOT
(
	Max(DWARTOSC)
	for
	DCECHAID in([210],[212])

) as pvt
