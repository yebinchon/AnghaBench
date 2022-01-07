
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct address_space {int dummy; } ;


 int PG_dcache_clean ;
 struct page* ZERO_PAGE (int ) ;
 int __flush_dcache_aliases (struct address_space*,struct page*) ;
 int __flush_dcache_page (struct address_space*,struct page*) ;
 int __flush_icache_all () ;
 scalar_t__ cache_is_vipt_nonaliasing () ;
 scalar_t__ cache_is_vivt () ;
 int cache_ops_need_broadcast () ;
 int clear_bit (int ,int *) ;
 int page_mapcount (struct page*) ;
 struct address_space* page_mapping_file (struct page*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void flush_dcache_page(struct page *page)
{
 struct address_space *mapping;





 if (page == ZERO_PAGE(0))
  return;

 if (!cache_ops_need_broadcast() && cache_is_vipt_nonaliasing()) {
  if (test_bit(PG_dcache_clean, &page->flags))
   clear_bit(PG_dcache_clean, &page->flags);
  return;
 }

 mapping = page_mapping_file(page);

 if (!cache_ops_need_broadcast() &&
     mapping && !page_mapcount(page))
  clear_bit(PG_dcache_clean, &page->flags);
 else {
  __flush_dcache_page(mapping, page);
  if (mapping && cache_is_vivt())
   __flush_dcache_aliases(mapping, page);
  else if (mapping)
   __flush_icache_all();
  set_bit(PG_dcache_clean, &page->flags);
 }
}
