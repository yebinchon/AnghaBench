
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int SPR_ICBIR ;
 int cache_loop (struct page*,int ) ;

void local_icache_page_inv(struct page *page)
{
 cache_loop(page, SPR_ICBIR);
}
