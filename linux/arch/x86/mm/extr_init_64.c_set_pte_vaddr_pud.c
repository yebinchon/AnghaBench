
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;


 int __set_pte_vaddr (int *,unsigned long,int ) ;
 int pud_index (unsigned long) ;

void set_pte_vaddr_pud(pud_t *pud_page, unsigned long vaddr, pte_t new_pte)
{
 pud_t *pud = pud_page + pud_index(vaddr);

 __set_pte_vaddr(pud, vaddr, new_pte);
}
