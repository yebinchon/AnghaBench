
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gio_device {int dev; } ;


 int device_unregister (int *) ;

void gio_device_unregister(struct gio_device *giodev)
{
 device_unregister(&giodev->dev);
}
