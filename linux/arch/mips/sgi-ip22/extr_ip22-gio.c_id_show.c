
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct gio_device {TYPE_1__ id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct gio_device* to_gio_device (struct device*) ;

__attribute__((used)) static ssize_t id_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct gio_device *giodev;

 giodev = to_gio_device(dev);
 return sprintf(buf, "%x", giodev->id.id);
}
