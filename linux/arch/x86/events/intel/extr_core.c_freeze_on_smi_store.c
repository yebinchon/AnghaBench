
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {unsigned long attr_freeze_on_smi; } ;


 size_t EINVAL ;
 int flip_smm_bit ;
 int freeze_on_smi_mutex ;
 int get_online_cpus () ;
 size_t kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int on_each_cpu (int ,unsigned long*,int) ;
 int put_online_cpus () ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static ssize_t freeze_on_smi_store(struct device *cdev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 unsigned long val;
 ssize_t ret;

 ret = kstrtoul(buf, 0, &val);
 if (ret)
  return ret;

 if (val > 1)
  return -EINVAL;

 mutex_lock(&freeze_on_smi_mutex);

 if (x86_pmu.attr_freeze_on_smi == val)
  goto done;

 x86_pmu.attr_freeze_on_smi = val;

 get_online_cpus();
 on_each_cpu(flip_smm_bit, &val, 1);
 put_online_cpus();
done:
 mutex_unlock(&freeze_on_smi_mutex);

 return count;
}
