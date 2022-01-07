
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_device {int dev; } ;


 int device_unregister (int *) ;

__attribute__((used)) static void sunxi_rsb_device_unregister(struct sunxi_rsb_device *rdev)
{
 device_unregister(&rdev->dev);
}
