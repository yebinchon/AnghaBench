
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attach_data {int check_async; int want_async; struct device* dev; } ;
struct device {scalar_t__ parent; int bus; scalar_t__ driver; TYPE_1__* p; } ;
typedef int async_cookie_t ;
struct TYPE_2__ {scalar_t__ dead; } ;


 int __device_attach_driver ;
 int bus_for_each_drv (int ,int *,struct device_attach_data*,int ) ;
 int dev_dbg (struct device*,char*) ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int pm_request_idle (struct device*) ;
 int pm_runtime_get_sync (scalar_t__) ;
 int pm_runtime_put (scalar_t__) ;
 int put_device (struct device*) ;

__attribute__((used)) static void __device_attach_async_helper(void *_dev, async_cookie_t cookie)
{
 struct device *dev = _dev;
 struct device_attach_data data = {
  .dev = dev,
  .check_async = 1,
  .want_async = 1,
 };

 device_lock(dev);







 if (dev->p->dead || dev->driver)
  goto out_unlock;

 if (dev->parent)
  pm_runtime_get_sync(dev->parent);

 bus_for_each_drv(dev->bus, ((void*)0), &data, __device_attach_driver);
 dev_dbg(dev, "async probe completed\n");

 pm_request_idle(dev);

 if (dev->parent)
  pm_runtime_put(dev->parent);
out_unlock:
 device_unlock(dev);

 put_device(dev);
}
