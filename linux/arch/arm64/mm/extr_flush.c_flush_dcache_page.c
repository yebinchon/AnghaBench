
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 int PG_dcache_clean ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void flush_dcache_page(struct page *page)
{
 if (test_bit(PG_dcache_clean, &page->flags))
  clear_bit(PG_dcache_clean, &page->flags);
}
