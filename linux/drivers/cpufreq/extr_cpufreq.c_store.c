
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct freq_attr {int (* store ) (struct cpufreq_policy*,char const*,size_t) ;} ;
struct cpufreq_policy {int rwsem; int cpu; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ cpu_online (int ) ;
 int cpus_read_trylock () ;
 int cpus_read_unlock () ;
 int down_write (int *) ;
 int stub1 (struct cpufreq_policy*,char const*,size_t) ;
 struct freq_attr* to_attr (struct attribute*) ;
 struct cpufreq_policy* to_policy (struct kobject*) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t store(struct kobject *kobj, struct attribute *attr,
       const char *buf, size_t count)
{
 struct cpufreq_policy *policy = to_policy(kobj);
 struct freq_attr *fattr = to_attr(attr);
 ssize_t ret = -EINVAL;





 if (!cpus_read_trylock())
  return -EBUSY;

 if (cpu_online(policy->cpu)) {
  down_write(&policy->rwsem);
  ret = fattr->store(policy, buf, count);
  up_write(&policy->rwsem);
 }

 cpus_read_unlock();

 return ret;
}
