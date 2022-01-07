
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device {int kobj; TYPE_4__* driver; TYPE_2__* bus; } ;
struct TYPE_8__ {TYPE_3__* p; int coredump; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_6__ {TYPE_1__* p; } ;
struct TYPE_5__ {int bus_notifier; } ;


 int BUS_NOTIFY_BIND_DRIVER ;
 int CONFIG_DEV_COREDUMP ;
 int IS_ENABLED (int ) ;
 int blocking_notifier_call_chain (int *,int ,struct device*) ;
 int dev_attr_coredump ;
 int device_create_file (struct device*,int *) ;
 char* kobject_name (int *) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static int driver_sysfs_add(struct device *dev)
{
 int ret;

 if (dev->bus)
  blocking_notifier_call_chain(&dev->bus->p->bus_notifier,
          BUS_NOTIFY_BIND_DRIVER, dev);

 ret = sysfs_create_link(&dev->driver->p->kobj, &dev->kobj,
    kobject_name(&dev->kobj));
 if (ret)
  goto fail;

 ret = sysfs_create_link(&dev->kobj, &dev->driver->p->kobj,
    "driver");
 if (ret)
  goto rm_dev;

 if (!IS_ENABLED(CONFIG_DEV_COREDUMP) || !dev->driver->coredump ||
     !device_create_file(dev, &dev_attr_coredump))
  return 0;

 sysfs_remove_link(&dev->kobj, "driver");

rm_dev:
 sysfs_remove_link(&dev->driver->p->kobj,
     kobject_name(&dev->kobj));

fail:
 return ret;
}
