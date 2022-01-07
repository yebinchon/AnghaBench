
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct agp_memory {int page_count; struct page** pages; } ;
struct TYPE_2__ {int current_memory_agp; } ;


 int __free_page (struct page*) ;
 TYPE_1__* agp_bridge ;
 int atomic_dec (int *) ;
 int put_page (struct page*) ;
 int set_pages_array_wb (struct page**,int) ;
 int unmap_page_from_agp (struct page*) ;

void agp_generic_destroy_pages(struct agp_memory *mem)
{
 int i;
 struct page *page;

 if (!mem)
  return;





 for (i = 0; i < mem->page_count; i++) {
  page = mem->pages[i];


  unmap_page_from_agp(page);

  put_page(page);
  __free_page(page);
  atomic_dec(&agp_bridge->current_memory_agp);
  mem->pages[i] = ((void*)0);
 }
}
