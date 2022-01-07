
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
typedef int pte_t ;


 int PG_dcache_clean ;
 int flush_icache_all () ;
 struct page* pte_page (int ) ;
 int test_and_set_bit (int ,int *) ;

void flush_icache_pte(pte_t pte)
{
 struct page *page = pte_page(pte);

 if (!test_and_set_bit(PG_dcache_clean, &page->flags))
  flush_icache_all();
}
