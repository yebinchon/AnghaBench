
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pgd_t ;


 int * pud_offset (int *,unsigned long) ;

pud_t *pud_offset_proc(pgd_t *pgd, unsigned long address)
{
 return pud_offset(pgd, address);
}
