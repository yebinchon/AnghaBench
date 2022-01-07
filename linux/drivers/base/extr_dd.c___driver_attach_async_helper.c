
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int name; } ;
struct device {int parent; int driver; TYPE_1__* p; } ;
typedef int async_cookie_t ;
struct TYPE_2__ {int dead; struct device_driver* async_driver; } ;


 int __device_driver_lock (struct device*,int ) ;
 int __device_driver_unlock (struct device*,int ) ;
 int dev_dbg (struct device*,char*,int ,int) ;
 int driver_probe_device (struct device_driver*,struct device*) ;
 int put_device (struct device*) ;

__attribute__((used)) static void __driver_attach_async_helper(void *_dev, async_cookie_t cookie)
{
 struct device *dev = _dev;
 struct device_driver *drv;
 int ret = 0;

 __device_driver_lock(dev, dev->parent);

 drv = dev->p->async_driver;





 if (!dev->p->dead && !dev->driver)
  ret = driver_probe_device(drv, dev);

 __device_driver_unlock(dev, dev->parent);

 dev_dbg(dev, "driver %s async attach completed: %d\n", drv->name, ret);

 put_device(dev);
}
