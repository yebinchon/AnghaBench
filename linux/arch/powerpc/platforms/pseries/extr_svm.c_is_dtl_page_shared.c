
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 long dtl_nr_pages ;
 struct page** dtl_page_store ;

__attribute__((used)) static bool is_dtl_page_shared(struct page *page)
{
 long i;

 for (i = 0; i < dtl_nr_pages; i++)
  if (dtl_page_store[i] == page)
   return 1;

 return 0;
}
