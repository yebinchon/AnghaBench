
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_driver {int (* shutdown ) (struct platform_device*) ;} ;
struct platform_device {int dummy; } ;
struct device {scalar_t__ driver; } ;


 int stub1 (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;
 struct platform_driver* to_platform_driver (scalar_t__) ;

__attribute__((used)) static void ibmebus_bus_device_shutdown(struct device *dev)
{
 struct platform_device *of_dev = to_platform_device(dev);
 struct platform_driver *drv = to_platform_driver(dev->driver);

 if (dev->driver && drv->shutdown)
  drv->shutdown(of_dev);
}
