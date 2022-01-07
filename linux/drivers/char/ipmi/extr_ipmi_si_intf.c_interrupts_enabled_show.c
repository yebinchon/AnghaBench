
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ irq; } ;
struct smi_info {int interrupt_disabled; TYPE_1__ io; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct smi_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t interrupts_enabled_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct smi_info *smi_info = dev_get_drvdata(dev);
 int enabled = smi_info->io.irq && !smi_info->interrupt_disabled;

 return snprintf(buf, 10, "%d\n", enabled);
}
