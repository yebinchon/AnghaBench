
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int allow_tsx_force_abort ;
 int get_online_cpus () ;
 size_t kstrtobool (char const*,int*) ;
 int on_each_cpu (int ,int *,int) ;
 int put_online_cpus () ;
 int update_tfa_sched ;

__attribute__((used)) static ssize_t set_sysctl_tfa(struct device *cdev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 bool val;
 ssize_t ret;

 ret = kstrtobool(buf, &val);
 if (ret)
  return ret;


 if (val == allow_tsx_force_abort)
  return count;

 allow_tsx_force_abort = val;

 get_online_cpus();
 on_each_cpu(update_tfa_sched, ((void*)0), 1);
 put_online_cpus();

 return count;
}
