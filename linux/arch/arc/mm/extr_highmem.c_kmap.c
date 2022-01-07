
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int ) ;
 int PageHighMem (struct page*) ;
 int in_interrupt () ;
 void* kmap_high (struct page*) ;
 void* page_address (struct page*) ;

void *kmap(struct page *page)
{
 BUG_ON(in_interrupt());
 if (!PageHighMem(page))
  return page_address(page);

 return kmap_high(page);
}
