
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int of_driver_match_device (struct device*,struct device_driver*) ;

__attribute__((used)) static int sunxi_rsb_device_match(struct device *dev, struct device_driver *drv)
{
 return of_driver_match_device(dev, drv);
}
