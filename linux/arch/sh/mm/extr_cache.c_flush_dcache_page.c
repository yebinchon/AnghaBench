
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int cacheop_on_each_cpu (int ,struct page*,int) ;
 int local_flush_dcache_page ;

void flush_dcache_page(struct page *page)
{
 cacheop_on_each_cpu(local_flush_dcache_page, page, 1);
}
