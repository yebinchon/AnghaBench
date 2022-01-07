
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* p; } ;
struct TYPE_3__ {int bus_notifier; } ;


 int BUS_NOTIFY_DRIVER_NOT_BOUND ;
 int blocking_notifier_call_chain (int *,int ,struct device*) ;
 int driver_bound (struct device*) ;
 int driver_sysfs_add (struct device*) ;

int device_bind_driver(struct device *dev)
{
 int ret;

 ret = driver_sysfs_add(dev);
 if (!ret)
  driver_bound(dev);
 else if (dev->bus)
  blocking_notifier_call_chain(&dev->bus->p->bus_notifier,
          BUS_NOTIFY_DRIVER_NOT_BOUND, dev);
 return ret;
}
