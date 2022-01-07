
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct agp_bridge_data {int * key_list; TYPE_2__* driver; struct page* scratch_page_page; int mapped_lock; int mapped_list; TYPE_1__* dev; int scratch_page_dma; int scratch_page; int * version; int max_memory_agp; } ;
struct TYPE_4__ {int (* fetch_size ) () ;int (* free_gatt_table ) (struct agp_bridge_data*) ;int (* agp_destroy_page ) (struct page*,int ) ;scalar_t__ needs_scratch_page; scalar_t__ (* configure ) () ;scalar_t__ (* create_gatt_table ) (struct agp_bridge_data*) ;int (* mask_memory ) (struct agp_bridge_data*,int ,int ) ;struct page* (* agp_alloc_page ) (struct agp_bridge_data*) ;} ;
struct TYPE_3__ {int dev; } ;


 int AGP_PAGE_DESTROY_FREE ;
 int AGP_PAGE_DESTROY_UNMAP ;
 int EINVAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int agp_current_version ;
 int agp_find_max () ;
 int dev_err (int *,char*) ;
 int page_to_phys (struct page*) ;
 int spin_lock_init (int *) ;
 struct page* stub1 (struct agp_bridge_data*) ;
 int stub2 (struct agp_bridge_data*,int ,int ) ;
 int stub3 () ;
 scalar_t__ stub4 (struct agp_bridge_data*) ;
 scalar_t__ stub5 () ;
 int stub6 (struct page*,int ) ;
 int stub7 (struct page*,int ) ;
 int stub8 (struct agp_bridge_data*) ;
 int vfree (int *) ;
 int * vzalloc (int) ;

__attribute__((used)) static int agp_backend_initialize(struct agp_bridge_data *bridge)
{
 int size_value, rc, got_gatt=0, got_keylist=0;

 bridge->max_memory_agp = agp_find_max();
 bridge->version = &agp_current_version;

 if (bridge->driver->needs_scratch_page) {
  struct page *page = bridge->driver->agp_alloc_page(bridge);

  if (!page) {
   dev_err(&bridge->dev->dev,
    "can't get memory for scratch page\n");
   return -ENOMEM;
  }

  bridge->scratch_page_page = page;
  bridge->scratch_page_dma = page_to_phys(page);

  bridge->scratch_page = bridge->driver->mask_memory(bridge,
         bridge->scratch_page_dma, 0);
 }

 size_value = bridge->driver->fetch_size();
 if (size_value == 0) {
  dev_err(&bridge->dev->dev, "can't determine aperture size\n");
  rc = -EINVAL;
  goto err_out;
 }
 if (bridge->driver->create_gatt_table(bridge)) {
  dev_err(&bridge->dev->dev,
   "can't get memory for graphics translation table\n");
  rc = -ENOMEM;
  goto err_out;
 }
 got_gatt = 1;

 bridge->key_list = vzalloc(PAGE_SIZE * 4);
 if (bridge->key_list == ((void*)0)) {
  dev_err(&bridge->dev->dev,
   "can't allocate memory for key lists\n");
  rc = -ENOMEM;
  goto err_out;
 }
 got_keylist = 1;



 if (bridge->driver->configure()) {
  dev_err(&bridge->dev->dev, "error configuring host chipset\n");
  rc = -EINVAL;
  goto err_out;
 }
 INIT_LIST_HEAD(&bridge->mapped_list);
 spin_lock_init(&bridge->mapped_lock);

 return 0;

err_out:
 if (bridge->driver->needs_scratch_page) {
  struct page *page = bridge->scratch_page_page;

  bridge->driver->agp_destroy_page(page, AGP_PAGE_DESTROY_UNMAP);
  bridge->driver->agp_destroy_page(page, AGP_PAGE_DESTROY_FREE);
 }
 if (got_gatt)
  bridge->driver->free_gatt_table(bridge);
 if (got_keylist) {
  vfree(bridge->key_list);
  bridge->key_list = ((void*)0);
 }
 return rc;
}
