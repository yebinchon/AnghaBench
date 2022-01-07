
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int cache_wbinv_range (unsigned long,scalar_t__) ;
 scalar_t__ kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;

void flush_icache_page(struct vm_area_struct *vma, struct page *page)
{
 unsigned long start;

 start = (unsigned long) kmap_atomic(page);

 cache_wbinv_range(start, start + PAGE_SIZE);

 kunmap_atomic((void *)start);
}
