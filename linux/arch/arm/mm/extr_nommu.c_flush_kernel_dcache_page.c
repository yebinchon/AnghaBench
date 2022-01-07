
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_SIZE ;
 int __cpuc_flush_dcache_area (int ,int ) ;
 int page_address (struct page*) ;

void flush_kernel_dcache_page(struct page *page)
{
 __cpuc_flush_dcache_area(page_address(page), PAGE_SIZE);
}
