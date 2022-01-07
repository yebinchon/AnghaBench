
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_key_data {void* next; } ;


 unsigned long DIV_ROUND_UP (unsigned long,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_KEY_DATA_SIZE ;
 scalar_t__ get_zeroed_page (int ) ;
 void* page_key_data ;
 int page_key_free () ;
 void* page_key_rp ;
 scalar_t__ page_key_rx ;
 void* page_key_wp ;
 scalar_t__ page_key_wx ;

int page_key_alloc(unsigned long pages)
{
 struct page_key_data *pk;
 unsigned long size;

 size = DIV_ROUND_UP(pages, PAGE_KEY_DATA_SIZE);
 while (size--) {
  pk = (struct page_key_data *) get_zeroed_page(GFP_KERNEL);
  if (!pk) {
   page_key_free();
   return -ENOMEM;
  }
  pk->next = page_key_data;
  page_key_data = pk;
 }
 page_key_rp = page_key_wp = page_key_data;
 page_key_rx = page_key_wx = 0;
 return 0;
}
