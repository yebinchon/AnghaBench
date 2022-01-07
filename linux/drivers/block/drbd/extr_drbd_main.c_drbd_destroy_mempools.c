
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __free_page (struct page*) ;
 int bioset_exit (int *) ;
 int * drbd_al_ext_cache ;
 int * drbd_bm_ext_cache ;
 int * drbd_ee_cache ;
 int drbd_ee_mempool ;
 int drbd_io_bio_set ;
 int drbd_md_io_bio_set ;
 int drbd_md_io_page_pool ;
 struct page* drbd_pp_pool ;
 int drbd_pp_vacant ;
 int * drbd_request_cache ;
 int drbd_request_mempool ;
 int kmem_cache_destroy (int *) ;
 int mempool_exit (int *) ;
 scalar_t__ page_private (struct page*) ;

__attribute__((used)) static void drbd_destroy_mempools(void)
{
 struct page *page;

 while (drbd_pp_pool) {
  page = drbd_pp_pool;
  drbd_pp_pool = (struct page *)page_private(page);
  __free_page(page);
  drbd_pp_vacant--;
 }



 bioset_exit(&drbd_io_bio_set);
 bioset_exit(&drbd_md_io_bio_set);
 mempool_exit(&drbd_md_io_page_pool);
 mempool_exit(&drbd_ee_mempool);
 mempool_exit(&drbd_request_mempool);
 kmem_cache_destroy(drbd_ee_cache);
 kmem_cache_destroy(drbd_request_cache);
 kmem_cache_destroy(drbd_bm_ext_cache);
 kmem_cache_destroy(drbd_al_ext_cache);

 drbd_ee_cache = ((void*)0);
 drbd_request_cache = ((void*)0);
 drbd_bm_ext_cache = ((void*)0);
 drbd_al_ext_cache = ((void*)0);

 return;
}
