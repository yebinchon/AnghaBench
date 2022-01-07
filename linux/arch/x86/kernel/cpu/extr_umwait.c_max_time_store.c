
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int MSR_IA32_UMWAIT_CONTROL_TIME_MASK ;
 int READ_ONCE (int ) ;
 int kstrtou32 (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int umwait_control_cached ;
 int umwait_ctrl_c02_enabled (int) ;
 int umwait_ctrl_max_time (int) ;
 int umwait_lock ;
 int umwait_update_control (int,int ) ;

__attribute__((used)) static ssize_t max_time_store(struct device *kobj,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 u32 max_time, ctrl;
 int ret;

 ret = kstrtou32(buf, 0, &max_time);
 if (ret)
  return ret;


 if (max_time & ~MSR_IA32_UMWAIT_CONTROL_TIME_MASK)
  return -EINVAL;

 mutex_lock(&umwait_lock);

 ctrl = READ_ONCE(umwait_control_cached);
 if (max_time != umwait_ctrl_max_time(ctrl))
  umwait_update_control(max_time, umwait_ctrl_c02_enabled(ctrl));

 mutex_unlock(&umwait_lock);

 return count;
}
