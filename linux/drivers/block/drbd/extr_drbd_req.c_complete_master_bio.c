
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_device {int dummy; } ;
struct bio_and_error {TYPE_1__* bio; int error; } ;
struct TYPE_2__ {int bi_status; } ;


 int bio_endio (TYPE_1__*) ;
 int dec_ap_bio (struct drbd_device*) ;
 int errno_to_blk_status (int ) ;

void complete_master_bio(struct drbd_device *device,
  struct bio_and_error *m)
{
 m->bio->bi_status = errno_to_blk_status(m->error);
 bio_endio(m->bio);
 dec_ap_bio(device);
}
