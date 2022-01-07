
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct sunxi_rsb_device*) ;
 struct sunxi_rsb_device* to_sunxi_rsb_device (struct device*) ;

__attribute__((used)) static void sunxi_rsb_dev_release(struct device *dev)
{
 struct sunxi_rsb_device *rdev = to_sunxi_rsb_device(dev);

 kfree(rdev);
}
