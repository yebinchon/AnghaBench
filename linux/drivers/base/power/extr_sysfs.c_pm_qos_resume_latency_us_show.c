
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ s32 ;


 scalar_t__ PM_QOS_RESUME_LATENCY_NO_CONSTRAINT ;
 scalar_t__ dev_pm_qos_requested_resume_latency (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t pm_qos_resume_latency_us_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 s32 value = dev_pm_qos_requested_resume_latency(dev);

 if (value == 0)
  return sprintf(buf, "n/a\n");
 if (value == PM_QOS_RESUME_LATENCY_NO_CONSTRAINT)
  value = 0;

 return sprintf(buf, "%d\n", value);
}
