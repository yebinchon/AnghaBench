
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int flags; } ;
typedef int pte_t ;


 int PG_dcache_clean ;
 int VM_EXEC ;
 struct page* ZERO_PAGE (int ) ;
 int dcache_wbinv_all () ;
 int icache_inv_all () ;
 scalar_t__ page_mapping_file (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 int test_and_set_bit (int ,int *) ;

void update_mmu_cache(struct vm_area_struct *vma, unsigned long addr,
 pte_t *ptep)
{
 unsigned long pfn = pte_pfn(*ptep);
 struct page *page;

 if (!pfn_valid(pfn))
  return;

 page = pfn_to_page(pfn);
 if (page == ZERO_PAGE(0))
  return;

 if (!test_and_set_bit(PG_dcache_clean, &page->flags))
  dcache_wbinv_all();

 if (page_mapping_file(page)) {
  if (vma->vm_flags & VM_EXEC)
   icache_inv_all();
 }
}
