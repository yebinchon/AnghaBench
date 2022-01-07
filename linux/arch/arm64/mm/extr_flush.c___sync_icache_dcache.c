
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
typedef int pte_t ;


 int PG_dcache_clean ;
 int page_address (struct page*) ;
 int page_size (struct page*) ;
 struct page* pte_page (int ) ;
 int sync_icache_aliases (int ,int ) ;
 int test_and_set_bit (int ,int *) ;

void __sync_icache_dcache(pte_t pte)
{
 struct page *page = pte_page(pte);

 if (!test_and_set_bit(PG_dcache_clean, &page->flags))
  sync_icache_aliases(page_address(page), page_size(page));
}
