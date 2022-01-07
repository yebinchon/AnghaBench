
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


 int PAGE_SIZE ;
 int snprintf (char*,int,char*,int) ;
 struct gio_device* to_gio_device (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *a,
        char *buf)
{
 struct gio_device *gio_dev = to_gio_device(dev);
 int len = snprintf(buf, PAGE_SIZE, "gio:%x\n", gio_dev->id.id);

 return (len >= PAGE_SIZE) ? (PAGE_SIZE - 1) : len;
}
