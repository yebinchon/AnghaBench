
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 scalar_t__ PageHighMem (struct page*) ;
 int SetPageDcacheDirty (struct page*) ;
 int __kunmap_atomic (void*) ;
 int flush_data_cache_page (unsigned long) ;
 scalar_t__ kmap_atomic (struct page*) ;
 int mapping_mapped (struct address_space*) ;
 scalar_t__ page_address (struct page*) ;
 struct address_space* page_mapping_file (struct page*) ;

void __flush_dcache_page(struct page *page)
{
 struct address_space *mapping = page_mapping_file(page);
 unsigned long addr;

 if (mapping && !mapping_mapped(mapping)) {
  SetPageDcacheDirty(page);
  return;
 }






 if (PageHighMem(page))
  addr = (unsigned long)kmap_atomic(page);
 else
  addr = (unsigned long)page_address(page);

 flush_data_cache_page(addr);

 if (PageHighMem(page))
  __kunmap_atomic((void *)addr);
}
