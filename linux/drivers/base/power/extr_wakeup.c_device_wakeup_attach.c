
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wakeup_source {int dummy; } ;
struct TYPE_2__ {int lock; scalar_t__ wakeirq; struct wakeup_source* wakeup; } ;
struct device {TYPE_1__ power; } ;


 int EEXIST ;
 int device_wakeup_attach_irq (struct device*,scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int device_wakeup_attach(struct device *dev, struct wakeup_source *ws)
{
 spin_lock_irq(&dev->power.lock);
 if (dev->power.wakeup) {
  spin_unlock_irq(&dev->power.lock);
  return -EEXIST;
 }
 dev->power.wakeup = ws;
 if (dev->power.wakeirq)
  device_wakeup_attach_irq(dev, dev->power.wakeirq);
 spin_unlock_irq(&dev->power.lock);
 return 0;
}
