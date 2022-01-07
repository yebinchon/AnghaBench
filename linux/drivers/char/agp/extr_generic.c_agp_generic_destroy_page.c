
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int current_memory_agp; } ;


 int AGP_PAGE_DESTROY_FREE ;
 int AGP_PAGE_DESTROY_UNMAP ;
 int __free_page (struct page*) ;
 TYPE_1__* agp_bridge ;
 int atomic_dec (int *) ;
 int put_page (struct page*) ;
 int unmap_page_from_agp (struct page*) ;

void agp_generic_destroy_page(struct page *page, int flags)
{
 if (page == ((void*)0))
  return;

 if (flags & AGP_PAGE_DESTROY_UNMAP)
  unmap_page_from_agp(page);

 if (flags & AGP_PAGE_DESTROY_FREE) {
  put_page(page);
  __free_page(page);
  atomic_dec(&agp_bridge->current_memory_agp);
 }
}
