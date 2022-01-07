
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; int error; } ;
struct drbd_device {int misc_wait; TYPE_1__ md_io; scalar_t__ ldev; } ;
struct bio {int bi_status; struct drbd_device* bi_private; } ;


 int bio_put (struct bio*) ;
 int blk_status_to_errno (int ) ;
 int drbd_md_put_buffer (struct drbd_device*) ;
 int put_ldev (struct drbd_device*) ;
 int wake_up (int *) ;

void drbd_md_endio(struct bio *bio)
{
 struct drbd_device *device;

 device = bio->bi_private;
 device->md_io.error = blk_status_to_errno(bio->bi_status);


 if (device->ldev)
  put_ldev(device);
 bio_put(bio);
 drbd_md_put_buffer(device);
 device->md_io.done = 1;
 wake_up(&device->misc_wait);
}
