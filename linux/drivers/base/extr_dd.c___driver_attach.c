
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int name; } ;
struct device {TYPE_1__* p; int driver; } ;
struct TYPE_2__ {struct device_driver* async_driver; } ;


 int EPROBE_DEFER ;
 int __driver_attach_async_helper ;
 int async_schedule_dev (int ,struct device*) ;
 int dev_dbg (struct device*,char*,...) ;
 int device_driver_attach (struct device_driver*,struct device*) ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 scalar_t__ driver_allows_async_probing (struct device_driver*) ;
 int driver_deferred_probe_add (struct device*) ;
 int driver_match_device (struct device_driver*,struct device*) ;
 int get_device (struct device*) ;

__attribute__((used)) static int __driver_attach(struct device *dev, void *data)
{
 struct device_driver *drv = data;
 int ret;
 ret = driver_match_device(drv, dev);
 if (ret == 0) {

  return 0;
 } else if (ret == -EPROBE_DEFER) {
  dev_dbg(dev, "Device match requests probe deferral\n");
  driver_deferred_probe_add(dev);
 } else if (ret < 0) {
  dev_dbg(dev, "Bus failed to match device: %d", ret);
  return ret;
 }

 if (driver_allows_async_probing(drv)) {







  dev_dbg(dev, "probing driver %s asynchronously\n", drv->name);
  device_lock(dev);
  if (!dev->driver) {
   get_device(dev);
   dev->p->async_driver = drv;
   async_schedule_dev(__driver_attach_async_helper, dev);
  }
  device_unlock(dev);
  return 0;
 }

 device_driver_attach(drv, dev);

 return 0;
}
