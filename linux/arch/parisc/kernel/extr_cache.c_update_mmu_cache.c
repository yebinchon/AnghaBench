
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int flags; } ;
typedef int pte_t ;


 int PG_dcache_dirty ;
 int clear_bit (int ,int *) ;
 int flush_kernel_dcache_page_addr (int ) ;
 scalar_t__ page_mapping_file (struct page*) ;
 scalar_t__ parisc_requires_coherency () ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_va (unsigned long) ;
 int pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 scalar_t__ test_bit (int ,int *) ;

void
update_mmu_cache(struct vm_area_struct *vma, unsigned long address, pte_t *ptep)
{
 unsigned long pfn = pte_pfn(*ptep);
 struct page *page;




 if (!pfn_valid(pfn))
  return;

 page = pfn_to_page(pfn);
 if (page_mapping_file(page) &&
     test_bit(PG_dcache_dirty, &page->flags)) {
  flush_kernel_dcache_page_addr(pfn_va(pfn));
  clear_bit(PG_dcache_dirty, &page->flags);
 } else if (parisc_requires_coherency())
  flush_kernel_dcache_page_addr(pfn_va(pfn));
}
