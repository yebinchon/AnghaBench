
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_device {int dev; } ;


 int put_device (int *) ;

void amba_device_put(struct amba_device *dev)
{
 put_device(&dev->dev);
}
