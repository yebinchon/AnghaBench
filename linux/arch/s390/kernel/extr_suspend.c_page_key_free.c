
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_key_data {struct page_key_data* next; } ;


 int free_page (unsigned long) ;
 struct page_key_data* page_key_data ;

void page_key_free(void)
{
 struct page_key_data *pkd;

 while (page_key_data) {
  pkd = page_key_data;
  page_key_data = pkd->next;
  free_page((unsigned long) pkd);
 }
}
