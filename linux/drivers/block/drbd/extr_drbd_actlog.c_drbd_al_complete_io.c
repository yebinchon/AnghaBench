
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lc_element {int dummy; } ;
struct drbd_interval {int sector; int size; } ;
struct drbd_device {int al_wait; int al_lock; int act_log; } ;


 int AL_EXTENT_SHIFT ;
 int D_ASSERT (struct drbd_device*,int) ;
 int drbd_err (struct drbd_device*,char*,unsigned int) ;
 struct lc_element* lc_find (int ,unsigned int) ;
 int lc_put (int ,struct lc_element*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void drbd_al_complete_io(struct drbd_device *device, struct drbd_interval *i)
{


 unsigned first = i->sector >> (AL_EXTENT_SHIFT-9);
 unsigned last = i->size == 0 ? first : (i->sector + (i->size >> 9) - 1) >> (AL_EXTENT_SHIFT-9);
 unsigned enr;
 struct lc_element *extent;
 unsigned long flags;

 D_ASSERT(device, first <= last);
 spin_lock_irqsave(&device->al_lock, flags);

 for (enr = first; enr <= last; enr++) {
  extent = lc_find(device->act_log, enr);
  if (!extent) {
   drbd_err(device, "al_complete_io() called on inactive extent %u\n", enr);
   continue;
  }
  lc_put(device->act_log, extent);
 }
 spin_unlock_irqrestore(&device->al_lock, flags);
 wake_up(&device->al_wait);
}
