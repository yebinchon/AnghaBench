
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 unsigned long PAGE_MASK ;
 int cache_wbinv_range (unsigned long,unsigned long) ;
 scalar_t__ kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;

void flush_icache_user_range(struct vm_area_struct *vma, struct page *page,
        unsigned long vaddr, int len)
{
 unsigned long kaddr;

 kaddr = (unsigned long) kmap_atomic(page) + (vaddr & ~PAGE_MASK);

 cache_wbinv_range(kaddr, kaddr + len);

 kunmap_atomic((void *)kaddr);
}
