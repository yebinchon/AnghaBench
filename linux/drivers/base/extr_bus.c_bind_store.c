
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int bus; } ;
struct device {int * driver; } ;
struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct device* bus_find_device_by_name (struct bus_type*,int *,char const*) ;
 struct bus_type* bus_get (int ) ;
 int bus_put (struct bus_type*) ;
 int device_driver_attach (struct device_driver*,struct device*) ;
 scalar_t__ driver_match_device (struct device_driver*,struct device*) ;
 int put_device (struct device*) ;

__attribute__((used)) static ssize_t bind_store(struct device_driver *drv, const char *buf,
     size_t count)
{
 struct bus_type *bus = bus_get(drv->bus);
 struct device *dev;
 int err = -ENODEV;

 dev = bus_find_device_by_name(bus, ((void*)0), buf);
 if (dev && dev->driver == ((void*)0) && driver_match_device(drv, dev)) {
  err = device_driver_attach(drv, dev);

  if (err > 0) {

   err = count;
  } else if (err == 0) {

   err = -ENODEV;
  }
 }
 put_device(dev);
 bus_put(bus);
 return err;
}
