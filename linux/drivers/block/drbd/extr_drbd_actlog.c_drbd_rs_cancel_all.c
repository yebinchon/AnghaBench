
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int al_wait; int al_lock; int resync_wenr; scalar_t__ resync_locked; int resync; } ;


 int D_FAILED ;
 int LC_FREE ;
 scalar_t__ get_ldev_if_state (struct drbd_device*,int ) ;
 int lc_reset (int ) ;
 int put_ldev (struct drbd_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up (int *) ;

void drbd_rs_cancel_all(struct drbd_device *device)
{
 spin_lock_irq(&device->al_lock);

 if (get_ldev_if_state(device, D_FAILED)) {
  lc_reset(device->resync);
  put_ldev(device);
 }
 device->resync_locked = 0;
 device->resync_wenr = LC_FREE;
 spin_unlock_irq(&device->al_lock);
 wake_up(&device->al_wait);
}
