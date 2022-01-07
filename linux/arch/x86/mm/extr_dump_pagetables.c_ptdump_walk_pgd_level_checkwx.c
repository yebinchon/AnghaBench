
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ptdump_walk_pgd_level_core (int *,int *,int,int) ;

void ptdump_walk_pgd_level_checkwx(void)
{
 ptdump_walk_pgd_level_core(((void*)0), ((void*)0), 1, 0);
}
