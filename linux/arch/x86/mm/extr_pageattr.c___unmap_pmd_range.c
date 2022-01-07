
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;


 int pud_clear (int *) ;
 scalar_t__ pud_page_vaddr (int ) ;
 scalar_t__ try_to_free_pmd_page (int *) ;
 scalar_t__ unmap_pte_range (int *,unsigned long,unsigned long) ;

__attribute__((used)) static void __unmap_pmd_range(pud_t *pud, pmd_t *pmd,
         unsigned long start, unsigned long end)
{
 if (unmap_pte_range(pmd, start, end))
  if (try_to_free_pmd_page((pmd_t *)pud_page_vaddr(*pud)))
   pud_clear(pud);
}
