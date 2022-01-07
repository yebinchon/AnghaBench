
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct lc_element {int dummy; } ;
struct drbd_request {int dummy; } ;
struct drbd_peer_request {int dummy; } ;
struct bm_extent {int dummy; } ;


 int BIOSET_NEED_BVECS ;
 int BIO_POOL_SIZE ;
 int DRBD_MAX_BIO_SIZE ;
 int DRBD_MIN_POOL_PAGES ;
 int ENOMEM ;
 int GFP_HIGHUSER ;
 int PAGE_SIZE ;
 struct page* alloc_page (int ) ;
 int bioset_init (int *,int ,int ,int ) ;
 int * drbd_al_ext_cache ;
 int * drbd_bm_ext_cache ;
 int drbd_destroy_mempools () ;
 int * drbd_ee_cache ;
 int drbd_ee_mempool ;
 int drbd_io_bio_set ;
 int drbd_md_io_bio_set ;
 int drbd_md_io_page_pool ;
 int drbd_minor_count ;
 int drbd_pp_lock ;
 struct page* drbd_pp_pool ;
 int drbd_pp_vacant ;
 int * drbd_request_cache ;
 int drbd_request_mempool ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;
 int mempool_init_page_pool (int *,int ,int ) ;
 int mempool_init_slab_pool (int *,int const,int *) ;
 int set_page_private (struct page*,unsigned long) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int drbd_create_mempools(void)
{
 struct page *page;
 const int number = (DRBD_MAX_BIO_SIZE/PAGE_SIZE) * drbd_minor_count;
 int i, ret;


 drbd_request_cache = kmem_cache_create(
  "drbd_req", sizeof(struct drbd_request), 0, 0, ((void*)0));
 if (drbd_request_cache == ((void*)0))
  goto Enomem;

 drbd_ee_cache = kmem_cache_create(
  "drbd_ee", sizeof(struct drbd_peer_request), 0, 0, ((void*)0));
 if (drbd_ee_cache == ((void*)0))
  goto Enomem;

 drbd_bm_ext_cache = kmem_cache_create(
  "drbd_bm", sizeof(struct bm_extent), 0, 0, ((void*)0));
 if (drbd_bm_ext_cache == ((void*)0))
  goto Enomem;

 drbd_al_ext_cache = kmem_cache_create(
  "drbd_al", sizeof(struct lc_element), 0, 0, ((void*)0));
 if (drbd_al_ext_cache == ((void*)0))
  goto Enomem;


 ret = bioset_init(&drbd_io_bio_set, BIO_POOL_SIZE, 0, 0);
 if (ret)
  goto Enomem;

 ret = bioset_init(&drbd_md_io_bio_set, DRBD_MIN_POOL_PAGES, 0,
     BIOSET_NEED_BVECS);
 if (ret)
  goto Enomem;

 ret = mempool_init_page_pool(&drbd_md_io_page_pool, DRBD_MIN_POOL_PAGES, 0);
 if (ret)
  goto Enomem;

 ret = mempool_init_slab_pool(&drbd_request_mempool, number,
         drbd_request_cache);
 if (ret)
  goto Enomem;

 ret = mempool_init_slab_pool(&drbd_ee_mempool, number, drbd_ee_cache);
 if (ret)
  goto Enomem;


 spin_lock_init(&drbd_pp_lock);

 for (i = 0; i < number; i++) {
  page = alloc_page(GFP_HIGHUSER);
  if (!page)
   goto Enomem;
  set_page_private(page, (unsigned long)drbd_pp_pool);
  drbd_pp_pool = page;
 }
 drbd_pp_vacant = number;

 return 0;

Enomem:
 drbd_destroy_mempools();
 return -ENOMEM;
}
