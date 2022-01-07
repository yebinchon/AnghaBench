
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lc_element {scalar_t__ refcnt; } ;
struct drbd_device {int al_lock; int act_log; } ;


 int lc_del (int ,struct lc_element*) ;
 scalar_t__ likely (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int _try_lc_del(struct drbd_device *device, struct lc_element *al_ext)
{
 int rv;

 spin_lock_irq(&device->al_lock);
 rv = (al_ext->refcnt == 0);
 if (likely(rv))
  lc_del(device->act_log, al_ext);
 spin_unlock_irq(&device->al_lock);

 return rv;
}
