
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 struct page* page_chain_next (struct page*) ;

__attribute__((used)) static struct page *page_chain_tail(struct page *page, int *len)
{
 struct page *tmp;
 int i = 1;
 while ((tmp = page_chain_next(page)))
  ++i, page = tmp;
 if (len)
  *len = i;
 return page;
}
