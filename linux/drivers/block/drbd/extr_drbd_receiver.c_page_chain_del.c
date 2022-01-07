
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 struct page* page_chain_next (struct page*) ;
 int set_page_private (struct page*,int ) ;

__attribute__((used)) static struct page *page_chain_del(struct page **head, int n)
{
 struct page *page;
 struct page *tmp;

 BUG_ON(!n);
 BUG_ON(!head);

 page = *head;

 if (!page)
  return ((void*)0);

 while (page) {
  tmp = page_chain_next(page);
  if (--n == 0)
   break;
  if (tmp == ((void*)0))

   return ((void*)0);
  page = tmp;
 }


 set_page_private(page, 0);

 page = *head;
 *head = tmp;
 return page;
}
