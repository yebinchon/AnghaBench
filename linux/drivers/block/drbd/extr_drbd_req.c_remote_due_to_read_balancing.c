
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drbd_device {int flags; int rs_pending_cnt; int ap_pending_cnt; int local_cnt; TYPE_4__* ldev; } ;
struct backing_dev_info {int dummy; } ;
typedef int sector_t ;
typedef enum drbd_read_balancing { ____Placeholder_drbd_read_balancing } drbd_read_balancing ;
struct TYPE_8__ {TYPE_3__* backing_bdev; } ;
struct TYPE_7__ {TYPE_2__* bd_disk; } ;
struct TYPE_6__ {TYPE_1__* queue; } ;
struct TYPE_5__ {struct backing_dev_info* backing_dev_info; } ;
 int READ_BALANCE_RR ;
 scalar_t__ atomic_read (int *) ;
 int bdi_read_congested (struct backing_dev_info*) ;
 int test_and_change_bit (int ,int *) ;

__attribute__((used)) static bool remote_due_to_read_balancing(struct drbd_device *device, sector_t sector,
  enum drbd_read_balancing rbm)
{
 struct backing_dev_info *bdi;
 int stripe_shift;

 switch (rbm) {
 case 132:
  bdi = device->ldev->backing_bdev->bd_disk->queue->backing_dev_info;
  return bdi_read_congested(bdi);
 case 131:
  return atomic_read(&device->local_cnt) >
   atomic_read(&device->ap_pending_cnt) + atomic_read(&device->rs_pending_cnt);
 case 135:
 case 133:
 case 138:
 case 136:
 case 134:
 case 137:
  stripe_shift = (rbm - 135 + 15);
  return (sector >> (stripe_shift - 9)) & 1;
 case 128:
  return test_and_change_bit(READ_BALANCE_RR, &device->flags);
 case 129:
  return 1;
 case 130:
 default:
  return 0;
 }
}
