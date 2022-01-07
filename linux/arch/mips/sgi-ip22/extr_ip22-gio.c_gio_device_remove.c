
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gio_driver {int (* remove ) (struct gio_device*) ;} ;
struct gio_device {int dummy; } ;
struct device {scalar_t__ driver; } ;


 int stub1 (struct gio_device*) ;
 struct gio_device* to_gio_device (struct device*) ;
 struct gio_driver* to_gio_driver (scalar_t__) ;

__attribute__((used)) static int gio_device_remove(struct device *dev)
{
 struct gio_device *gio_dev = to_gio_device(dev);
 struct gio_driver *drv = to_gio_driver(dev->driver);

 if (dev->driver && drv->remove)
  drv->remove(gio_dev);
 return 0;
}
