
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PM_QOS_FLAG_NO_POWER_OFF ;
 int dev_pm_qos_requested_flags (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pm_qos_no_power_off_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 return sprintf(buf, "%d\n", !!(dev_pm_qos_requested_flags(dev)
     & PM_QOS_FLAG_NO_POWER_OFF));
}
