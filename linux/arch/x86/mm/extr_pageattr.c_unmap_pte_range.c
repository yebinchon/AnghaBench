
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 scalar_t__ PAGE_SIZE ;
 int __pte (int ) ;
 int pmd_clear (int *) ;
 scalar_t__ pmd_page_vaddr (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int set_pte (int *,int ) ;
 scalar_t__ try_to_free_pte_page (int *) ;

__attribute__((used)) static bool unmap_pte_range(pmd_t *pmd, unsigned long start, unsigned long end)
{
 pte_t *pte = pte_offset_kernel(pmd, start);

 while (start < end) {
  set_pte(pte, __pte(0));

  start += PAGE_SIZE;
  pte++;
 }

 if (try_to_free_pte_page((pte_t *)pmd_page_vaddr(*pmd))) {
  pmd_clear(pmd);
  return 1;
 }
 return 0;
}
