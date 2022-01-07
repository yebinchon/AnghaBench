
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int ) ;
 int PageHighMem (struct page*) ;
 int in_interrupt () ;
 int kunmap_high (struct page*) ;

void kunmap(struct page *page)
{
 BUG_ON(in_interrupt());
 if (!PageHighMem(page))
  return;
 kunmap_high(page);
}
