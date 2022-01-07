
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_driver {int devid; } ;
struct sa1111_dev {int devid; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct sa1111_driver* SA1111_DRV (struct device_driver*) ;
 struct sa1111_dev* to_sa1111_device (struct device*) ;

__attribute__((used)) static int sa1111_match(struct device *_dev, struct device_driver *_drv)
{
 struct sa1111_dev *dev = to_sa1111_device(_dev);
 struct sa1111_driver *drv = SA1111_DRV(_drv);

 return !!(dev->devid & drv->devid);
}
