
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageHighMem (struct page*) ;
 scalar_t__ kmap_high (struct page*) ;
 int might_sleep () ;
 void* page_address (struct page*) ;

void *kmap(struct page *page)
{
 unsigned long vaddr;
 might_sleep();
 if (!PageHighMem(page))
  return page_address(page);
 vaddr = (unsigned long)kmap_high(page);
 return (void *)vaddr;
}
