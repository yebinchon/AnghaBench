
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct TYPE_3__ {TYPE_2__* qos; } ;
struct device {TYPE_1__ power; } ;
typedef int ssize_t ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {int resume_latency_req; } ;


 int EINVAL ;
 scalar_t__ PM_QOS_RESUME_LATENCY_NO_CONSTRAINT ;
 int dev_pm_qos_update_request (int ,scalar_t__) ;
 int kstrtos32 (char const*,int ,scalar_t__*) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t pm_qos_resume_latency_us_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t n)
{
 s32 value;
 int ret;

 if (!kstrtos32(buf, 0, &value)) {




  if (value < 0 || value == PM_QOS_RESUME_LATENCY_NO_CONSTRAINT)
   return -EINVAL;

  if (value == 0)
   value = PM_QOS_RESUME_LATENCY_NO_CONSTRAINT;
 } else if (sysfs_streq(buf, "n/a")) {
  value = 0;
 } else {
  return -EINVAL;
 }

 ret = dev_pm_qos_update_request(dev->power.qos->resume_latency_req,
     value);
 return ret < 0 ? ret : n;
}
