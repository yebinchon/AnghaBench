
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_md {int al_stripes; int al_stripe_size_4k; } ;
struct drbd_device {int al_lock; int act_log; TYPE_1__* ldev; } ;
struct al_transaction_on_disk {int dummy; } ;
struct TYPE_2__ {struct drbd_md md; } ;


 int __al_write_transaction (struct drbd_device*,struct al_transaction_on_disk*) ;
 int lc_committed (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int drbd_al_initialize(struct drbd_device *device, void *buffer)
{
 struct al_transaction_on_disk *al = buffer;
 struct drbd_md *md = &device->ldev->md;
 int al_size_4k = md->al_stripes * md->al_stripe_size_4k;
 int i;

 __al_write_transaction(device, al);

 spin_lock_irq(&device->al_lock);
 lc_committed(device->act_log);
 spin_unlock_irq(&device->al_lock);




 for (i = 1; i < al_size_4k; i++) {
  int err = __al_write_transaction(device, al);
  if (err)
   return err;
 }
 return 0;
}
