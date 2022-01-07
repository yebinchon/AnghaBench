
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct TYPE_2__ {scalar_t__ runtime_auto; } ;
struct device {TYPE_1__ power; } ;
typedef int ssize_t ;


 char* ctrl_auto ;
 char* ctrl_on ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t control_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 return sprintf(buf, "%s\n",
    dev->power.runtime_auto ? ctrl_auto : ctrl_on);
}
