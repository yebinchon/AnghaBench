
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct agp_bridge_data {TYPE_1__* driver; struct page* scratch_page_page; int * key_list; } ;
struct TYPE_2__ {int (* agp_destroy_page ) (struct page*,int ) ;scalar_t__ needs_scratch_page; int (* free_gatt_table ) (struct agp_bridge_data*) ;int (* cleanup ) () ;} ;


 int AGP_PAGE_DESTROY_FREE ;
 int AGP_PAGE_DESTROY_UNMAP ;
 int stub1 () ;
 int stub2 (struct agp_bridge_data*) ;
 int stub3 (struct page*,int ) ;
 int stub4 (struct page*,int ) ;
 int vfree (int *) ;

__attribute__((used)) static void agp_backend_cleanup(struct agp_bridge_data *bridge)
{
 if (bridge->driver->cleanup)
  bridge->driver->cleanup();
 if (bridge->driver->free_gatt_table)
  bridge->driver->free_gatt_table(bridge);

 vfree(bridge->key_list);
 bridge->key_list = ((void*)0);

 if (bridge->driver->agp_destroy_page &&
     bridge->driver->needs_scratch_page) {
  struct page *page = bridge->scratch_page_page;

  bridge->driver->agp_destroy_page(page, AGP_PAGE_DESTROY_UNMAP);
  bridge->driver->agp_destroy_page(page, AGP_PAGE_DESTROY_FREE);
 }
}
