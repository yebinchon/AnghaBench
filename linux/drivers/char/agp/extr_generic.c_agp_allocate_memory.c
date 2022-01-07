
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct page {int dummy; } ;
struct agp_memory {struct agp_bridge_data* bridge; int page_count; struct page** pages; } ;
struct agp_bridge_data {int max_memory_agp; TYPE_1__* driver; int current_memory_agp; } ;
struct TYPE_2__ {struct page* (* agp_alloc_page ) (struct agp_bridge_data*) ;scalar_t__ (* agp_alloc_pages ) (struct agp_bridge_data*,struct agp_memory*,size_t) ;struct agp_memory* (* alloc_by_type ) (size_t,scalar_t__) ;} ;


 scalar_t__ AGP_USER_TYPES ;
 size_t ENTRIES_PER_PAGE ;
 struct agp_memory* agp_create_memory (int) ;
 int agp_free_memory (struct agp_memory*) ;
 struct agp_memory* agp_generic_alloc_user (size_t,scalar_t__) ;
 int atomic_read (int *) ;
 struct agp_memory* stub1 (size_t,scalar_t__) ;
 scalar_t__ stub2 (struct agp_bridge_data*,struct agp_memory*,size_t) ;
 struct page* stub3 (struct agp_bridge_data*) ;

struct agp_memory *agp_allocate_memory(struct agp_bridge_data *bridge,
     size_t page_count, u32 type)
{
 int scratch_pages;
 struct agp_memory *new;
 size_t i;
 int cur_memory;

 if (!bridge)
  return ((void*)0);

 cur_memory = atomic_read(&bridge->current_memory_agp);
 if ((cur_memory + page_count > bridge->max_memory_agp) ||
     (cur_memory + page_count < page_count))
  return ((void*)0);

 if (type >= AGP_USER_TYPES) {
  new = agp_generic_alloc_user(page_count, type);
  if (new)
   new->bridge = bridge;
  return new;
 }

 if (type != 0) {
  new = bridge->driver->alloc_by_type(page_count, type);
  if (new)
   new->bridge = bridge;
  return new;
 }

 scratch_pages = (page_count + ENTRIES_PER_PAGE - 1) / ENTRIES_PER_PAGE;

 new = agp_create_memory(scratch_pages);

 if (new == ((void*)0))
  return ((void*)0);

 if (bridge->driver->agp_alloc_pages) {
  if (bridge->driver->agp_alloc_pages(bridge, new, page_count)) {
   agp_free_memory(new);
   return ((void*)0);
  }
  new->bridge = bridge;
  return new;
 }

 for (i = 0; i < page_count; i++) {
  struct page *page = bridge->driver->agp_alloc_page(bridge);

  if (page == ((void*)0)) {
   agp_free_memory(new);
   return ((void*)0);
  }
  new->pages[i] = page;
  new->page_count++;
 }
 new->bridge = bridge;

 return new;
}
