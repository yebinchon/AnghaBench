
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int al_lock; int al_wait; int resync_locked; int resync; } ;
struct bm_extent {scalar_t__ flags; int lce; } ;
typedef int sector_t ;


 int AL_EXT_PER_BM_SECT ;
 int BME_LOCKED ;
 int BME_PRIORITY ;
 unsigned int BM_SECT_TO_EXT (int ) ;
 int EINTR ;
 int HZ ;
 struct bm_extent* _bme_get (struct drbd_device*,unsigned int) ;
 int _is_in_al (struct drbd_device*,unsigned int) ;
 int drbd_rs_c_min_rate_throttle (struct drbd_device*) ;
 scalar_t__ lc_put (int ,int *) ;
 scalar_t__ schedule_timeout_interruptible (int) ;
 int set_bit (int ,scalar_t__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;
 int wait_event_interruptible (int ,...) ;
 int wake_up (int *) ;

int drbd_rs_begin_io(struct drbd_device *device, sector_t sector)
{
 unsigned int enr = BM_SECT_TO_EXT(sector);
 struct bm_extent *bm_ext;
 int i, sig;
 bool sa;

retry:
 sig = wait_event_interruptible(device->al_wait,
   (bm_ext = _bme_get(device, enr)));
 if (sig)
  return -EINTR;

 if (test_bit(BME_LOCKED, &bm_ext->flags))
  return 0;


 sa = drbd_rs_c_min_rate_throttle(device);

 for (i = 0; i < AL_EXT_PER_BM_SECT; i++) {
  sig = wait_event_interruptible(device->al_wait,
            !_is_in_al(device, enr * AL_EXT_PER_BM_SECT + i) ||
            (sa && test_bit(BME_PRIORITY, &bm_ext->flags)));

  if (sig || (sa && test_bit(BME_PRIORITY, &bm_ext->flags))) {
   spin_lock_irq(&device->al_lock);
   if (lc_put(device->resync, &bm_ext->lce) == 0) {
    bm_ext->flags = 0;
    device->resync_locked--;
    wake_up(&device->al_wait);
   }
   spin_unlock_irq(&device->al_lock);
   if (sig)
    return -EINTR;
   if (schedule_timeout_interruptible(HZ/10))
    return -EINTR;
   goto retry;
  }
 }
 set_bit(BME_LOCKED, &bm_ext->flags);
 return 0;
}
