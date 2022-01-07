
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_device {int oper_speed; int dev; } ;


 int device_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static int bcm_of_probe(struct bcm_device *bdev)
{
 device_property_read_u32(bdev->dev, "max-speed", &bdev->oper_speed);
 return 0;
}
