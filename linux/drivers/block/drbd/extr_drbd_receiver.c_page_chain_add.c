
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 struct page* page_chain_tail (struct page*,int *) ;
 int set_page_private (struct page*,unsigned long) ;

__attribute__((used)) static void page_chain_add(struct page **head,
  struct page *chain_first, struct page *chain_last)
{

 struct page *tmp;
 tmp = page_chain_tail(chain_first, ((void*)0));
 BUG_ON(tmp != chain_last);



 set_page_private(chain_last, (unsigned long)*head);
 *head = chain_first;
}
