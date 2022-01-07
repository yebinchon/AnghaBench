
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device_driver {int (* remove ) (struct device*) ;int dev_groups; } ;
struct device {int kobj; TYPE_4__* bus; TYPE_2__* p; TYPE_1__* pm_domain; struct device_driver* driver; } ;
struct TYPE_8__ {TYPE_3__* p; int (* remove ) (struct device*) ;} ;
struct TYPE_7__ {int bus_notifier; } ;
struct TYPE_6__ {int knode_driver; } ;
struct TYPE_5__ {int (* dismiss ) (struct device*) ;} ;


 int BUS_NOTIFY_UNBIND_DRIVER ;
 int BUS_NOTIFY_UNBOUND_DRIVER ;
 int KOBJ_UNBIND ;
 int __device_driver_lock (struct device*,struct device*) ;
 int __device_driver_unlock (struct device*,struct device*) ;
 int arch_teardown_dma_ops (struct device*) ;
 int blocking_notifier_call_chain (int *,int ,struct device*) ;
 int dev_pm_set_driver_flags (struct device*,int ) ;
 int dev_set_drvdata (struct device*,int *) ;
 scalar_t__ device_links_busy (struct device*) ;
 int device_links_driver_cleanup (struct device*) ;
 int device_links_unbind_consumers (struct device*) ;
 int device_pm_check_callbacks (struct device*) ;
 int device_remove_groups (struct device*,int ) ;
 int devres_release_all (struct device*) ;
 int driver_sysfs_remove (struct device*) ;
 int klist_remove (int *) ;
 int kobject_uevent (int *,int ) ;
 int pm_runtime_clean_up_links (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int pm_runtime_reinit (struct device*) ;
 int stub1 (struct device*) ;
 int stub2 (struct device*) ;
 int stub3 (struct device*) ;

__attribute__((used)) static void __device_release_driver(struct device *dev, struct device *parent)
{
 struct device_driver *drv;

 drv = dev->driver;
 if (drv) {
  while (device_links_busy(dev)) {
   __device_driver_unlock(dev, parent);

   device_links_unbind_consumers(dev);

   __device_driver_lock(dev, parent);





   if (dev->driver != drv)
    return;
  }

  pm_runtime_get_sync(dev);
  pm_runtime_clean_up_links(dev);

  driver_sysfs_remove(dev);

  if (dev->bus)
   blocking_notifier_call_chain(&dev->bus->p->bus_notifier,
           BUS_NOTIFY_UNBIND_DRIVER,
           dev);

  pm_runtime_put_sync(dev);

  device_remove_groups(dev, drv->dev_groups);

  if (dev->bus && dev->bus->remove)
   dev->bus->remove(dev);
  else if (drv->remove)
   drv->remove(dev);

  device_links_driver_cleanup(dev);

  devres_release_all(dev);
  arch_teardown_dma_ops(dev);
  dev->driver = ((void*)0);
  dev_set_drvdata(dev, ((void*)0));
  if (dev->pm_domain && dev->pm_domain->dismiss)
   dev->pm_domain->dismiss(dev);
  pm_runtime_reinit(dev);
  dev_pm_set_driver_flags(dev, 0);

  klist_remove(&dev->p->knode_driver);
  device_pm_check_callbacks(dev);
  if (dev->bus)
   blocking_notifier_call_chain(&dev->bus->p->bus_notifier,
           BUS_NOTIFY_UNBOUND_DRIVER,
           dev);

  kobject_uevent(&dev->kobj, KOBJ_UNBIND);
 }
}
