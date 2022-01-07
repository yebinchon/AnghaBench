
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {int backing_dev_info; } ;
struct drbd_device {char congestion_reason; TYPE_1__* ldev; } ;
struct TYPE_6__ {TYPE_2__* connection; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int backing_bdev; } ;


 int CALLBACK_PENDING ;
 int D_UP_TO_DATE ;
 int NET_CONGESTED ;
 int WB_async_congested ;
 int WB_sync_congested ;
 struct request_queue* bdev_get_queue (int ) ;
 int bdi_congested (int ,int) ;
 TYPE_3__* first_peer_device (struct drbd_device*) ;
 scalar_t__ get_ldev (struct drbd_device*) ;
 int get_ldev_if_state (struct drbd_device*,int ) ;
 int may_inc_ap_bio (struct drbd_device*) ;
 int put_ldev (struct drbd_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int drbd_congested(void *congested_data, int bdi_bits)
{
 struct drbd_device *device = congested_data;
 struct request_queue *q;
 char reason = '-';
 int r = 0;

 if (!may_inc_ap_bio(device)) {

  r = bdi_bits;
  reason = 'd';
  goto out;
 }

 if (test_bit(CALLBACK_PENDING, &first_peer_device(device)->connection->flags)) {
  r |= (1 << WB_async_congested);





  if (!get_ldev_if_state(device, D_UP_TO_DATE))
   r |= (1 << WB_sync_congested);
  else
   put_ldev(device);
  r &= bdi_bits;
  reason = 'c';
  goto out;
 }

 if (get_ldev(device)) {
  q = bdev_get_queue(device->ldev->backing_bdev);
  r = bdi_congested(q->backing_dev_info, bdi_bits);
  put_ldev(device);
  if (r)
   reason = 'b';
 }

 if (bdi_bits & (1 << WB_async_congested) &&
     test_bit(NET_CONGESTED, &first_peer_device(device)->connection->flags)) {
  r |= (1 << WB_async_congested);
  reason = reason == 'b' ? 'a' : 'n';
 }

out:
 device->congestion_reason = reason;
 return r;
}
