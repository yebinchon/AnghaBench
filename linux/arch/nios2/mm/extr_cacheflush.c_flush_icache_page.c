
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 unsigned long PAGE_SIZE ;
 int __flush_dcache (unsigned long,unsigned long) ;
 int __flush_icache (unsigned long,unsigned long) ;
 scalar_t__ page_address (struct page*) ;

void flush_icache_page(struct vm_area_struct *vma, struct page *page)
{
 unsigned long start = (unsigned long) page_address(page);
 unsigned long end = start + PAGE_SIZE;

 __flush_dcache(start, end);
 __flush_icache(start, end);
}
