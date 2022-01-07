
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
struct device {int parent; int driver; TYPE_1__* p; } ;
struct TYPE_2__ {int dead; } ;


 int __device_driver_lock (struct device*,int ) ;
 int __device_driver_unlock (struct device*,int ) ;
 int driver_probe_device (struct device_driver*,struct device*) ;

int device_driver_attach(struct device_driver *drv, struct device *dev)
{
 int ret = 0;

 __device_driver_lock(dev, dev->parent);





 if (!dev->p->dead && !dev->driver)
  ret = driver_probe_device(drv, dev);

 __device_driver_unlock(dev, dev->parent);

 return ret;
}
