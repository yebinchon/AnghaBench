
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int bus; } ;
struct device {struct device_driver* driver; } ;
struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct device* bus_find_device_by_name (struct bus_type*,int *,char const*) ;
 struct bus_type* bus_get (int ) ;
 int bus_put (struct bus_type*) ;
 int device_driver_detach (struct device*) ;
 int put_device (struct device*) ;

__attribute__((used)) static ssize_t unbind_store(struct device_driver *drv, const char *buf,
       size_t count)
{
 struct bus_type *bus = bus_get(drv->bus);
 struct device *dev;
 int err = -ENODEV;

 dev = bus_find_device_by_name(bus, ((void*)0), buf);
 if (dev && dev->driver == drv) {
  device_driver_detach(dev);
  err = count;
 }
 put_device(dev);
 bus_put(bus);
 return err;
}
