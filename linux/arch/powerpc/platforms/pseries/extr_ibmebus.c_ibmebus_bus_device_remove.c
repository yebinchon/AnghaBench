
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_driver {int (* remove ) (struct platform_device*) ;} ;
struct platform_device {int dummy; } ;
struct device {scalar_t__ driver; } ;


 int stub1 (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;
 struct platform_driver* to_platform_driver (scalar_t__) ;

__attribute__((used)) static int ibmebus_bus_device_remove(struct device *dev)
{
 struct platform_device *of_dev = to_platform_device(dev);
 struct platform_driver *drv = to_platform_driver(dev->driver);

 if (dev->driver && drv->remove)
  drv->remove(of_dev);
 return 0;
}
