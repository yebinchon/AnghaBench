
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_device {int dummy; } ;
struct device {int * bus; } ;


 int sunxi_rsb_bus ;
 int sunxi_rsb_device_unregister (struct sunxi_rsb_device*) ;
 struct sunxi_rsb_device* to_sunxi_rsb_device (struct device*) ;

__attribute__((used)) static int sunxi_rsb_remove_devices(struct device *dev, void *data)
{
 struct sunxi_rsb_device *rdev = to_sunxi_rsb_device(dev);

 if (dev->bus == &sunxi_rsb_bus)
  sunxi_rsb_device_unregister(rdev);

 return 0;
}
