
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct agp_memory {struct page** pages; int page_count; } ;
struct agp_bridge_data {int dummy; } ;
struct TYPE_2__ {int current_memory_agp; } ;


 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 TYPE_1__* agp_bridge ;
 struct page* alloc_page (int) ;
 int atomic_inc (int *) ;
 int get_page (struct page*) ;
 int map_page_into_agp (struct page*) ;
 int set_pages_array_uc (struct page**,size_t) ;

int agp_generic_alloc_pages(struct agp_bridge_data *bridge, struct agp_memory *mem, size_t num_pages)
{
 struct page * page;
 int i, ret = -ENOMEM;

 for (i = 0; i < num_pages; i++) {
  page = alloc_page(GFP_KERNEL | GFP_DMA32 | __GFP_ZERO);

  if (page == ((void*)0))
   goto out;


  map_page_into_agp(page);

  get_page(page);
  atomic_inc(&agp_bridge->current_memory_agp);

  mem->pages[i] = page;
  mem->page_count++;
 }




 ret = 0;
out:
 return ret;
}
