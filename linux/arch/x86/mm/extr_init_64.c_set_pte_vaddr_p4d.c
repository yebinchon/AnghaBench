
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int p4d_t ;


 int __set_pte_vaddr (int *,unsigned long,int ) ;
 int * fill_pud (int *,unsigned long) ;
 int p4d_index (unsigned long) ;

void set_pte_vaddr_p4d(p4d_t *p4d_page, unsigned long vaddr, pte_t new_pte)
{
 p4d_t *p4d = p4d_page + p4d_index(vaddr);
 pud_t *pud = fill_pud(p4d, vaddr);

 __set_pte_vaddr(pud, vaddr, new_pte);
}
