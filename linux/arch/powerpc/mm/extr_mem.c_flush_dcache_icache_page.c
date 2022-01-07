
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int phys_addr_t ;


 int CONFIG_BOOKE ;
 scalar_t__ IS_ENABLED (int ) ;
 int PAGE_SHIFT ;
 scalar_t__ PageCompound (struct page*) ;
 int __flush_dcache_icache (void*) ;
 int __flush_dcache_icache_phys (int) ;
 int flush_dcache_icache_hugepage (struct page*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 void* page_address (struct page*) ;
 int page_to_pfn (struct page*) ;

void flush_dcache_icache_page(struct page *page)
{
 if (IS_ENABLED(CONFIG_BOOKE) || sizeof(phys_addr_t) > sizeof(void *)) {
  void *start = kmap_atomic(page);
  __flush_dcache_icache(start);
  kunmap_atomic(start);
 } else {
  __flush_dcache_icache_phys(page_to_pfn(page) << PAGE_SHIFT);
 }

}
