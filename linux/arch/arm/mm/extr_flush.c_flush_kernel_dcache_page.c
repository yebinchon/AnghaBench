
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int CONFIG_HIGHMEM ;
 int IS_ENABLED (int ) ;
 int PAGE_SIZE ;
 int __cpuc_flush_dcache_area (void*,int ) ;
 scalar_t__ cache_is_vipt_aliasing () ;
 scalar_t__ cache_is_vivt () ;
 scalar_t__ mapping_mapped (struct address_space*) ;
 void* page_address (struct page*) ;
 struct address_space* page_mapping_file (struct page*) ;

void flush_kernel_dcache_page(struct page *page)
{
 if (cache_is_vivt() || cache_is_vipt_aliasing()) {
  struct address_space *mapping;

  mapping = page_mapping_file(page);

  if (!mapping || mapping_mapped(mapping)) {
   void *addr;

   addr = page_address(page);






   if (!IS_ENABLED(CONFIG_HIGHMEM) || addr)
    __cpuc_flush_dcache_area(addr, PAGE_SIZE);
  }
 }
}
