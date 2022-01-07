
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int READ_ONCE (int ) ;
 int kstrtobool (char const*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int umwait_control_cached ;
 int umwait_ctrl_c02_enabled (int ) ;
 int umwait_lock ;
 int umwait_update_control (int ,int) ;

__attribute__((used)) static ssize_t enable_c02_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 bool c02_enable;
 u32 ctrl;
 int ret;

 ret = kstrtobool(buf, &c02_enable);
 if (ret)
  return ret;

 mutex_lock(&umwait_lock);

 ctrl = READ_ONCE(umwait_control_cached);
 if (c02_enable != umwait_ctrl_c02_enabled(ctrl))
  umwait_update_control(ctrl, c02_enable);

 mutex_unlock(&umwait_lock);

 return count;
}
