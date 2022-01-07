
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lc_element {int dummy; } ;
struct drbd_device {int al_lock; int act_log; int al_wait; } ;
struct bm_extent {int flags; } ;


 int BME_PRIORITY ;
 struct bm_extent* find_active_resync_extent (struct drbd_device*,unsigned int) ;
 struct lc_element* lc_get (int ,unsigned int) ;
 struct lc_element* lc_try_get (int ,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static struct lc_element *_al_get(struct drbd_device *device, unsigned int enr, bool nonblock)
{
 struct lc_element *al_ext;
 struct bm_extent *bm_ext;
 int wake;

 spin_lock_irq(&device->al_lock);
 bm_ext = find_active_resync_extent(device, enr);
 if (bm_ext) {
  wake = !test_and_set_bit(BME_PRIORITY, &bm_ext->flags);
  spin_unlock_irq(&device->al_lock);
  if (wake)
   wake_up(&device->al_wait);
  return ((void*)0);
 }
 if (nonblock)
  al_ext = lc_try_get(device->act_log, enr);
 else
  al_ext = lc_get(device->act_log, enr);
 spin_unlock_irq(&device->al_lock);
 return al_ext;
}
