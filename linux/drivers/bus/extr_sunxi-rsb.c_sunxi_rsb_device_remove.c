
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_driver {int (* remove ) (int ) ;} ;
struct device {int driver; } ;


 int stub1 (int ) ;
 int to_sunxi_rsb_device (struct device*) ;
 struct sunxi_rsb_driver* to_sunxi_rsb_driver (int ) ;

__attribute__((used)) static int sunxi_rsb_device_remove(struct device *dev)
{
 const struct sunxi_rsb_driver *drv = to_sunxi_rsb_driver(dev->driver);

 return drv->remove(to_sunxi_rsb_device(dev));
}
