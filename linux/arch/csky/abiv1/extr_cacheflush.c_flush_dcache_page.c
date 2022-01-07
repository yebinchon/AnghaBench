
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct address_space {int dummy; } ;


 int PG_dcache_clean ;
 struct page* ZERO_PAGE (int ) ;
 int clear_bit (int ,int *) ;
 int dcache_wbinv_all () ;
 int icache_inv_all () ;
 int page_mapcount (struct page*) ;
 struct address_space* page_mapping_file (struct page*) ;
 int set_bit (int ,int *) ;

void flush_dcache_page(struct page *page)
{
 struct address_space *mapping;

 if (page == ZERO_PAGE(0))
  return;

 mapping = page_mapping_file(page);

 if (mapping && !page_mapcount(page))
  clear_bit(PG_dcache_clean, &page->flags);
 else {
  dcache_wbinv_all();
  if (mapping)
   icache_inv_all();
  set_bit(PG_dcache_clean, &page->flags);
 }
}
