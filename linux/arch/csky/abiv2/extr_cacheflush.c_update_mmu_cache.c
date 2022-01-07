
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef int pte_t ;


 scalar_t__ PAGE_SIZE ;
 struct page* ZERO_PAGE (int ) ;
 int cache_wbinv_range (unsigned long,scalar_t__) ;
 scalar_t__ kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 scalar_t__ unlikely (int) ;

void update_mmu_cache(struct vm_area_struct *vma, unsigned long address,
        pte_t *pte)
{
 unsigned long addr, pfn;
 struct page *page;

 pfn = pte_pfn(*pte);
 if (unlikely(!pfn_valid(pfn)))
  return;

 page = pfn_to_page(pfn);
 if (page == ZERO_PAGE(0))
  return;

 addr = (unsigned long) kmap_atomic(page);

 cache_wbinv_range(addr, addr + PAGE_SIZE);

 kunmap_atomic((void *) addr);
}
