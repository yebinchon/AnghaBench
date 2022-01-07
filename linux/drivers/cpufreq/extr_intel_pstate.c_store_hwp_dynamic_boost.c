
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int hwp_boost ;
 int intel_pstate_driver_lock ;
 int intel_pstate_update_policies () ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t store_hwp_dynamic_boost(struct kobject *a,
           struct kobj_attribute *b,
           const char *buf, size_t count)
{
 unsigned int input;
 int ret;

 ret = kstrtouint(buf, 10, &input);
 if (ret)
  return ret;

 mutex_lock(&intel_pstate_driver_lock);
 hwp_boost = !!input;
 intel_pstate_update_policies();
 mutex_unlock(&intel_pstate_driver_lock);

 return count;
}
