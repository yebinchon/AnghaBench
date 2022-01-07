
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int w; } ;
struct drbd_device {int misc_wait; TYPE_2__ bm_io_work; int flags; int ap_bio_cnt; } ;
struct TYPE_6__ {TYPE_1__* connection; } ;
struct TYPE_4__ {int sender_work; } ;


 int BITMAP_IO ;
 int BITMAP_IO_QUEUED ;
 int D_ASSERT (struct drbd_device*,int) ;
 int atomic_dec_return (int *) ;
 int drbd_get_max_buffers (struct drbd_device*) ;
 int drbd_queue_work (int *,int *) ;
 TYPE_3__* first_peer_device (struct drbd_device*) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void dec_ap_bio(struct drbd_device *device)
{
 int mxb = drbd_get_max_buffers(device);
 int ap_bio = atomic_dec_return(&device->ap_bio_cnt);

 D_ASSERT(device, ap_bio >= 0);

 if (ap_bio == 0 && test_bit(BITMAP_IO, &device->flags)) {
  if (!test_and_set_bit(BITMAP_IO_QUEUED, &device->flags))
   drbd_queue_work(&first_peer_device(device)->
    connection->sender_work,
    &device->bm_io_work.w);
 }




 if (ap_bio < mxb)
  wake_up(&device->misc_wait);
}
