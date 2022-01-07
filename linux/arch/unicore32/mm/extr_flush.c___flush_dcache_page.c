
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int PAGE_SIZE ;
 int __cpuc_flush_kern_dcache_area (int ,int ) ;
 int page_address (struct page*) ;

void __flush_dcache_page(struct address_space *mapping, struct page *page)
{





 __cpuc_flush_kern_dcache_area(page_address(page), PAGE_SIZE);
}
