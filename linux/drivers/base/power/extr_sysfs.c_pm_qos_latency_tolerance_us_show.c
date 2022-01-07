
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ s32 ;


 scalar_t__ PM_QOS_LATENCY_ANY ;
 scalar_t__ dev_pm_qos_get_user_latency_tolerance (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t pm_qos_latency_tolerance_us_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 s32 value = dev_pm_qos_get_user_latency_tolerance(dev);

 if (value < 0)
  return sprintf(buf, "auto\n");
 if (value == PM_QOS_LATENCY_ANY)
  return sprintf(buf, "any\n");

 return sprintf(buf, "%d\n", value);
}
