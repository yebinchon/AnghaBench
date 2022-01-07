
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int __flush_purge_region (int ,int ) ;
 int page_address (void*) ;

__attribute__((used)) static void sh7705_flush_icache_page(void *page)
{
 __flush_purge_region(page_address(page), PAGE_SIZE);
}
