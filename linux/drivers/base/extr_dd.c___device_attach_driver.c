
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device_attach_data {int have_async; int want_async; scalar_t__ check_async; struct device* dev; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 int dev_dbg (struct device*,char*,...) ;
 int driver_allows_async_probing (struct device_driver*) ;
 int driver_deferred_probe_add (struct device*) ;
 int driver_match_device (struct device_driver*,struct device*) ;
 int driver_probe_device (struct device_driver*,struct device*) ;

__attribute__((used)) static int __device_attach_driver(struct device_driver *drv, void *_data)
{
 struct device_attach_data *data = _data;
 struct device *dev = data->dev;
 bool async_allowed;
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

 async_allowed = driver_allows_async_probing(drv);

 if (async_allowed)
  data->have_async = 1;

 if (data->check_async && async_allowed != data->want_async)
  return 0;

 return driver_probe_device(drv, dev);
}
