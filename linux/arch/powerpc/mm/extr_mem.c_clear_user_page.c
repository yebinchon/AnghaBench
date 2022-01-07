
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int clear_page (void*) ;
 int flush_dcache_page (struct page*) ;

void clear_user_page(void *page, unsigned long vaddr, struct page *pg)
{
 clear_page(page);






 flush_dcache_page(pg);
}
