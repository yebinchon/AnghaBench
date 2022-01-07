
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int SPR_DCBFR ;
 int cache_loop (struct page*,int ) ;

void local_dcache_page_flush(struct page *page)
{
 cache_loop(page, SPR_DCBFR);
}
