
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct freq_attr {int (* show ) (struct cpufreq_policy*,char*) ;} ;
struct cpufreq_policy {int rwsem; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int down_read (int *) ;
 int stub1 (struct cpufreq_policy*,char*) ;
 struct freq_attr* to_attr (struct attribute*) ;
 struct cpufreq_policy* to_policy (struct kobject*) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t show(struct kobject *kobj, struct attribute *attr, char *buf)
{
 struct cpufreq_policy *policy = to_policy(kobj);
 struct freq_attr *fattr = to_attr(attr);
 ssize_t ret;

 down_read(&policy->rwsem);
 ret = fattr->show(policy, buf);
 up_read(&policy->rwsem);

 return ret;
}
