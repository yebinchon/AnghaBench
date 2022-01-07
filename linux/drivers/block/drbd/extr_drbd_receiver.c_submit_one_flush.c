
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct one_flush_context {struct issue_flush_context* ctx; struct drbd_device* device; } ;
struct issue_flush_context {int pending; int error; } ;
struct drbd_device {int flags; int flush_jif; TYPE_1__* ldev; int kref; } ;
struct bio {int bi_opf; int bi_end_io; struct one_flush_context* bi_private; } ;
struct TYPE_2__ {int backing_bdev; } ;


 int ENOMEM ;
 int FLUSH_PENDING ;
 int GFP_NOIO ;
 int REQ_OP_FLUSH ;
 int REQ_PREFLUSH ;
 int atomic_inc (int *) ;
 struct bio* bio_alloc (int ,int ) ;
 int bio_put (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int drbd_destroy_device ;
 int drbd_warn (struct drbd_device*,char*) ;
 int jiffies ;
 int kfree (struct one_flush_context*) ;
 struct one_flush_context* kmalloc (int,int ) ;
 int kref_put (int *,int ) ;
 int one_flush_endio ;
 int put_ldev (struct drbd_device*) ;
 int set_bit (int ,int *) ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static void submit_one_flush(struct drbd_device *device, struct issue_flush_context *ctx)
{
 struct bio *bio = bio_alloc(GFP_NOIO, 0);
 struct one_flush_context *octx = kmalloc(sizeof(*octx), GFP_NOIO);
 if (!bio || !octx) {
  drbd_warn(device, "Could not allocate a bio, CANNOT ISSUE FLUSH\n");



  kfree(octx);
  if (bio)
   bio_put(bio);

  ctx->error = -ENOMEM;
  put_ldev(device);
  kref_put(&device->kref, drbd_destroy_device);
  return;
 }

 octx->device = device;
 octx->ctx = ctx;
 bio_set_dev(bio, device->ldev->backing_bdev);
 bio->bi_private = octx;
 bio->bi_end_io = one_flush_endio;
 bio->bi_opf = REQ_OP_FLUSH | REQ_PREFLUSH;

 device->flush_jif = jiffies;
 set_bit(FLUSH_PENDING, &device->flags);
 atomic_inc(&ctx->pending);
 submit_bio(bio);
}
