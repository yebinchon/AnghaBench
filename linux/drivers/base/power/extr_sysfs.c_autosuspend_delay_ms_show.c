
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct TYPE_2__ {int autosuspend_delay; int use_autosuspend; } ;
struct device {TYPE_1__ power; } ;
typedef int ssize_t ;


 int EIO ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t autosuspend_delay_ms_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 if (!dev->power.use_autosuspend)
  return -EIO;
 return sprintf(buf, "%d\n", dev->power.autosuspend_delay);
}
