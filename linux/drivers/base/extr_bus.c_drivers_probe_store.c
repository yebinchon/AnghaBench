
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENODEV ;
 struct device* bus_find_device_by_name (struct bus_type*,int *,char const*) ;
 scalar_t__ bus_rescan_devices_helper (struct device*,int *) ;
 int put_device (struct device*) ;

__attribute__((used)) static ssize_t drivers_probe_store(struct bus_type *bus,
       const char *buf, size_t count)
{
 struct device *dev;
 int err = -EINVAL;

 dev = bus_find_device_by_name(bus, ((void*)0), buf);
 if (!dev)
  return -ENODEV;
 if (bus_rescan_devices_helper(dev, ((void*)0)) == 0)
  err = count;
 put_device(dev);
 return err;
}
