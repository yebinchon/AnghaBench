
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int _PAGE_KERNEL_TABLE ;
 int __pa (int *) ;
 int __pmd (int) ;
 scalar_t__ get_safe_page (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pte_offset_kernel (int *,int ) ;
 int set_pmd (int *,int ) ;

__attribute__((used)) static pte_t *resume_one_page_table_init(pmd_t *pmd)
{
 if (pmd_none(*pmd)) {
  pte_t *page_table = (pte_t *)get_safe_page(GFP_ATOMIC);
  if (!page_table)
   return ((void*)0);

  set_pmd(pmd, __pmd(__pa(page_table) | _PAGE_KERNEL_TABLE));

  BUG_ON(page_table != pte_offset_kernel(pmd, 0));

  return page_table;
 }

 return pte_offset_kernel(pmd, 0);
}
