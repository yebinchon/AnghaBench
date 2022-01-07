
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 int __flush_purge_region (void*,int ) ;
 int clear_page (void*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 scalar_t__ pages_do_alias (unsigned long,unsigned long) ;

void clear_user_highpage(struct page *page, unsigned long vaddr)
{
 void *kaddr = kmap_atomic(page);

 clear_page(kaddr);

 if (pages_do_alias((unsigned long)kaddr, vaddr & PAGE_MASK))
  __flush_purge_region(kaddr, PAGE_SIZE);

 kunmap_atomic(kaddr);
}
