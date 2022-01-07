
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct address_space {int dummy; } ;


 int PG_dcache_clean ;
 int __flush_dcache_page (int ) ;
 int __pa (int ) ;
 int clear_bit (int ,int *) ;
 int mapping_mapped (struct address_space*) ;
 int page_address (struct page*) ;
 struct address_space* page_mapping_file (struct page*) ;

__attribute__((used)) static void sh7705_flush_dcache_page(void *arg)
{
 struct page *page = arg;
 struct address_space *mapping = page_mapping_file(page);

 if (mapping && !mapping_mapped(mapping))
  clear_bit(PG_dcache_clean, &page->flags);
 else
  __flush_dcache_page(__pa(page_address(page)));
}
