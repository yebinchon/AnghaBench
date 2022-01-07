
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int dcache_wbinv_all () ;
 scalar_t__ mapping_mapped (struct address_space*) ;
 struct address_space* page_mapping_file (struct page*) ;

void flush_kernel_dcache_page(struct page *page)
{
 struct address_space *mapping;

 mapping = page_mapping_file(page);

 if (!mapping || mapping_mapped(mapping))
  dcache_wbinv_all();
}
