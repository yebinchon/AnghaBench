
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_driver {int (* probe ) (struct platform_device*) ;} ;
struct platform_device {int dummy; } ;
struct device {int driver; } ;


 int ENODEV ;
 int of_dev_get (struct platform_device*) ;
 int of_dev_put (struct platform_device*) ;
 scalar_t__ of_driver_match_device (struct device*,int ) ;
 int stub1 (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;
 struct platform_driver* to_platform_driver (int ) ;

__attribute__((used)) static int ibmebus_bus_device_probe(struct device *dev)
{
 int error = -ENODEV;
 struct platform_driver *drv;
 struct platform_device *of_dev;

 drv = to_platform_driver(dev->driver);
 of_dev = to_platform_device(dev);

 if (!drv->probe)
  return error;

 of_dev_get(of_dev);

 if (of_driver_match_device(dev, dev->driver))
  error = drv->probe(of_dev);
 if (error)
  of_dev_put(of_dev);

 return error;
}
