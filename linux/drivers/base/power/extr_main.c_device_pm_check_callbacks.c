
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int no_pm_callbacks; int lock; } ;
struct device {TYPE_6__ power; TYPE_5__* driver; TYPE_4__* pm_domain; TYPE_3__* type; TYPE_2__* class; TYPE_1__* bus; } ;
struct TYPE_11__ {int resume; int suspend; int * pm; } ;
struct TYPE_10__ {int ops; } ;
struct TYPE_9__ {int * pm; } ;
struct TYPE_8__ {int * pm; } ;
struct TYPE_7__ {int resume; int suspend; int * pm; } ;


 scalar_t__ pm_ops_is_empty (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void device_pm_check_callbacks(struct device *dev)
{
 spin_lock_irq(&dev->power.lock);
 dev->power.no_pm_callbacks =
  (!dev->bus || (pm_ops_is_empty(dev->bus->pm) &&
   !dev->bus->suspend && !dev->bus->resume)) &&
  (!dev->class || pm_ops_is_empty(dev->class->pm)) &&
  (!dev->type || pm_ops_is_empty(dev->type->pm)) &&
  (!dev->pm_domain || pm_ops_is_empty(&dev->pm_domain->ops)) &&
  (!dev->driver || (pm_ops_is_empty(dev->driver->pm) &&
   !dev->driver->suspend && !dev->driver->resume));
 spin_unlock_irq(&dev->power.lock);
}
