
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wakeup_source {int dummy; } ;
struct TYPE_2__ {int lock; struct wakeup_source* wakeup; } ;
struct device {TYPE_1__ power; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct wakeup_source *device_wakeup_detach(struct device *dev)
{
 struct wakeup_source *ws;

 spin_lock_irq(&dev->power.lock);
 ws = dev->power.wakeup;
 dev->power.wakeup = ((void*)0);
 spin_unlock_irq(&dev->power.lock);
 return ws;
}
