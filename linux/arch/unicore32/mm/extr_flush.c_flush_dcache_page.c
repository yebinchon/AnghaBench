
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct address_space {int dummy; } ;


 int PG_dcache_clean ;
 struct page* ZERO_PAGE (int ) ;
 int __flush_dcache_page (struct address_space*,struct page*) ;
 int __flush_icache_all () ;
 int clear_bit (int ,int *) ;
 int mapping_mapped (struct address_space*) ;
 struct address_space* page_mapping_file (struct page*) ;
 int set_bit (int ,int *) ;

void flush_dcache_page(struct page *page)
{
 struct address_space *mapping;





 if (page == ZERO_PAGE(0))
  return;

 mapping = page_mapping_file(page);

 if (mapping && !mapping_mapped(mapping))
  clear_bit(PG_dcache_clean, &page->flags);
 else {
  __flush_dcache_page(mapping, page);
  if (mapping)
   __flush_icache_all();
  set_bit(PG_dcache_clean, &page->flags);
 }
}
