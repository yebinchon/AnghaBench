
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gio_device {int dev; } ;


 int put_device (int *) ;

void gio_dev_put(struct gio_device *dev)
{
 if (dev)
  put_device(&dev->dev);
}
