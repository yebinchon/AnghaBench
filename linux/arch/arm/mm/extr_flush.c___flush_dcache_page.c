
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct address_space {int dummy; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PageHighMem (struct page*) ;
 int __cpuc_flush_dcache_area (void*,int ) ;
 scalar_t__ cache_is_vipt_aliasing () ;
 scalar_t__ cache_is_vipt_nonaliasing () ;
 unsigned long compound_nr (struct page*) ;
 int flush_pfn_alias (int ,int) ;
 void* kmap_atomic (struct page*) ;
 void* kmap_high_get (struct page*) ;
 int kunmap_atomic (void*) ;
 int kunmap_high (struct page*) ;
 void* page_address (struct page*) ;
 int page_size (struct page*) ;
 int page_to_pfn (struct page*) ;

void __flush_dcache_page(struct address_space *mapping, struct page *page)
{





 if (!PageHighMem(page)) {
  __cpuc_flush_dcache_area(page_address(page), page_size(page));
 } else {
  unsigned long i;
  if (cache_is_vipt_nonaliasing()) {
   for (i = 0; i < compound_nr(page); i++) {
    void *addr = kmap_atomic(page + i);
    __cpuc_flush_dcache_area(addr, PAGE_SIZE);
    kunmap_atomic(addr);
   }
  } else {
   for (i = 0; i < compound_nr(page); i++) {
    void *addr = kmap_high_get(page + i);
    if (addr) {
     __cpuc_flush_dcache_area(addr, PAGE_SIZE);
     kunmap_high(page + i);
    }
   }
  }
 }






 if (mapping && cache_is_vipt_aliasing())
  flush_pfn_alias(page_to_pfn(page),
    page->index << PAGE_SHIFT);
}
