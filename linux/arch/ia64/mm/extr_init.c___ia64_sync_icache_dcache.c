
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
typedef int pte_t ;


 int PG_arch_1 ;
 int flush_icache_range (unsigned long,scalar_t__) ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ page_size (struct page*) ;
 struct page* pte_page (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
__ia64_sync_icache_dcache (pte_t pte)
{
 unsigned long addr;
 struct page *page;

 page = pte_page(pte);
 addr = (unsigned long) page_address(page);

 if (test_bit(PG_arch_1, &page->flags))
  return;

 flush_icache_range(addr, addr + page_size(page));
 set_bit(PG_arch_1, &page->flags);
}
