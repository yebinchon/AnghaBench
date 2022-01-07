
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRS_PER_PGD ;
 unsigned long __pa (int ) ;
 int invalid_pte_table ;

void pgd_init(unsigned long *p)
{
 int i;

 for (i = 0; i < PTRS_PER_PGD; i++)
  p[i] = __pa(invalid_pte_table);
}
