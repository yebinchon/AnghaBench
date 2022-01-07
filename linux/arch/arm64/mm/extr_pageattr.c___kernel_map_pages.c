
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int debug_pagealloc_enabled () ;
 scalar_t__ page_address (struct page*) ;
 int rodata_full ;
 int set_memory_valid (unsigned long,int,int) ;

void __kernel_map_pages(struct page *page, int numpages, int enable)
{
 if (!debug_pagealloc_enabled() && !rodata_full)
  return;

 set_memory_valid((unsigned long)page_address(page), numpages, enable);
}
