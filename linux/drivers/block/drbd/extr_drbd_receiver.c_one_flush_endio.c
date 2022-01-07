
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct one_flush_context {struct issue_flush_context* ctx; struct drbd_device* device; } ;
struct issue_flush_context {int done; int pending; int error; } ;
struct drbd_device {int kref; int flags; } ;
struct bio {scalar_t__ bi_status; struct one_flush_context* bi_private; } ;


 int FLUSH_PENDING ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_put (struct bio*) ;
 int blk_status_to_errno (scalar_t__) ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int drbd_destroy_device ;
 int drbd_info (struct drbd_device*,char*,scalar_t__) ;
 int kfree (struct one_flush_context*) ;
 int kref_put (int *,int ) ;
 int put_ldev (struct drbd_device*) ;

__attribute__((used)) static void one_flush_endio(struct bio *bio)
{
 struct one_flush_context *octx = bio->bi_private;
 struct drbd_device *device = octx->device;
 struct issue_flush_context *ctx = octx->ctx;

 if (bio->bi_status) {
  ctx->error = blk_status_to_errno(bio->bi_status);
  drbd_info(device, "local disk FLUSH FAILED with status %d\n", bio->bi_status);
 }
 kfree(octx);
 bio_put(bio);

 clear_bit(FLUSH_PENDING, &device->flags);
 put_ldev(device);
 kref_put(&device->kref, drbd_destroy_device);

 if (atomic_dec_and_test(&ctx->pending))
  complete(&ctx->done);
}
