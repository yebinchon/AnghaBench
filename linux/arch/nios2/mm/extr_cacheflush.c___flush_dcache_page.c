
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int __flush_dcache (unsigned long,scalar_t__) ;
 scalar_t__ page_address (struct page*) ;

void __flush_dcache_page(struct address_space *mapping, struct page *page)
{





 unsigned long start = (unsigned long)page_address(page);

 __flush_dcache(start, start + PAGE_SIZE);
}
