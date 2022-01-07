
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int __flush_tlb_one_kernel (unsigned long) ;
 int * fill_pmd (int *,unsigned long) ;
 int * fill_pte (int *,unsigned long) ;
 int set_pte (int *,int ) ;

__attribute__((used)) static void __set_pte_vaddr(pud_t *pud, unsigned long vaddr, pte_t new_pte)
{
 pmd_t *pmd = fill_pmd(pud, vaddr);
 pte_t *pte = fill_pte(pmd, vaddr);

 set_pte(pte, new_pte);





 __flush_tlb_one_kernel(vaddr);
}
