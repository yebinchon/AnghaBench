
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __free_page (struct page*) ;
 int pr_alert (char*,unsigned long,unsigned long) ;

__attribute__((used)) static void bm_free_pages(struct page **pages, unsigned long number)
{
 unsigned long i;
 if (!pages)
  return;

 for (i = 0; i < number; i++) {
  if (!pages[i]) {
   pr_alert("bm_free_pages tried to free a NULL pointer; i=%lu n=%lu\n",
     i, number);
   continue;
  }
  __free_page(pages[i]);
  pages[i] = ((void*)0);
 }
}
