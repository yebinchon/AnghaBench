
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_device {int misc_wait; struct drbd_bitmap* bitmap; } ;
struct drbd_bm_aio_ctx {int flags; int done; int kref; int in_flight; int error; struct drbd_device* device; } ;
struct drbd_bitmap {int * bm_pages; } ;
struct bio {TYPE_1__* bi_io_vec; scalar_t__ bi_status; struct drbd_bm_aio_ctx* bi_private; } ;
struct TYPE_2__ {int bv_page; } ;


 int BM_AIO_COPY_PAGES ;
 scalar_t__ __ratelimit (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_first_page_all (struct bio*) ;
 int bio_put (struct bio*) ;
 int blk_status_to_errno (scalar_t__) ;
 int bm_clear_page_io_err (int ) ;
 unsigned int bm_page_to_idx (int ) ;
 int bm_page_unlock_io (struct drbd_device*,unsigned int) ;
 int bm_set_page_io_err (int ) ;
 int bm_test_page_unchanged (int ) ;
 int drbd_bm_aio_ctx_destroy ;
 int drbd_err (struct drbd_device*,char*,scalar_t__,unsigned int) ;
 int drbd_md_io_page_pool ;
 int drbd_ratelimit_state ;
 int drbd_warn (struct drbd_device*,char*,unsigned int) ;
 int dynamic_drbd_dbg (struct drbd_device*,char*,unsigned int) ;
 int kref_put (int *,int *) ;
 int mempool_free (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void drbd_bm_endio(struct bio *bio)
{
 struct drbd_bm_aio_ctx *ctx = bio->bi_private;
 struct drbd_device *device = ctx->device;
 struct drbd_bitmap *b = device->bitmap;
 unsigned int idx = bm_page_to_idx(bio_first_page_all(bio));

 if ((ctx->flags & BM_AIO_COPY_PAGES) == 0 &&
     !bm_test_page_unchanged(b->bm_pages[idx]))
  drbd_warn(device, "bitmap page idx %u changed during IO!\n", idx);

 if (bio->bi_status) {


  ctx->error = blk_status_to_errno(bio->bi_status);
  bm_set_page_io_err(b->bm_pages[idx]);


  if (__ratelimit(&drbd_ratelimit_state))
   drbd_err(device, "IO ERROR %d on bitmap page idx %u\n",
     bio->bi_status, idx);
 } else {
  bm_clear_page_io_err(b->bm_pages[idx]);
  dynamic_drbd_dbg(device, "bitmap page idx %u completed\n", idx);
 }

 bm_page_unlock_io(device, idx);

 if (ctx->flags & BM_AIO_COPY_PAGES)
  mempool_free(bio->bi_io_vec[0].bv_page, &drbd_md_io_page_pool);

 bio_put(bio);

 if (atomic_dec_and_test(&ctx->in_flight)) {
  ctx->done = 1;
  wake_up(&device->misc_wait);
  kref_put(&ctx->kref, &drbd_bm_aio_ctx_destroy);
 }
}
