
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct page {int flags; } ;
typedef int pte_t ;
struct TYPE_3__ {int n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 int PAGE_SIZE ;
 int PG_dcache_clean ;
 int __flush_purge_region (int ,int ) ;
 TYPE_2__ boot_cpu_data ;
 int page_address (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 scalar_t__ pfn_valid (unsigned long) ;
 unsigned long pte_pfn (int ) ;
 int test_and_set_bit (int ,int *) ;

void __update_cache(struct vm_area_struct *vma,
      unsigned long address, pte_t pte)
{
 struct page *page;
 unsigned long pfn = pte_pfn(pte);

 if (!boot_cpu_data.dcache.n_aliases)
  return;

 page = pfn_to_page(pfn);
 if (pfn_valid(pfn)) {
  int dirty = !test_and_set_bit(PG_dcache_clean, &page->flags);
  if (dirty)
   __flush_purge_region(page_address(page), PAGE_SIZE);
 }
}
