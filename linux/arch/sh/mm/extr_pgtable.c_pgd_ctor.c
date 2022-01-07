
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int PTRS_PER_PGD ;
 int USER_PTRS_PER_PGD ;
 int memcpy (int *,int,int) ;
 int swapper_pg_dir ;

void pgd_ctor(void *x)
{
 pgd_t *pgd = x;

 memcpy(pgd + USER_PTRS_PER_PGD,
        swapper_pg_dir + USER_PTRS_PER_PGD,
        (PTRS_PER_PGD - USER_PTRS_PER_PGD) * sizeof(pgd_t));
}
