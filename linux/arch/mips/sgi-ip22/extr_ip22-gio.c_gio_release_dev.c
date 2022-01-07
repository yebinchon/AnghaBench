
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gio_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct gio_device*) ;
 struct gio_device* to_gio_device (struct device*) ;

void gio_release_dev(struct device *dev)
{
 struct gio_device *giodev;

 giodev = to_gio_device(dev);
 kfree(giodev);
}
