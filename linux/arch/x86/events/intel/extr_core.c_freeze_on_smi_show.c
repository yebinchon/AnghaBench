
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int attr_freeze_on_smi; } ;


 int sprintf (char*,char*,int ) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static ssize_t freeze_on_smi_show(struct device *cdev,
      struct device_attribute *attr,
      char *buf)
{
 return sprintf(buf, "%lu\n", x86_pmu.attr_freeze_on_smi);
}
