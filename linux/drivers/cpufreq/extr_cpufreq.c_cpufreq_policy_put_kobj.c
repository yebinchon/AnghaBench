
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct completion {int dummy; } ;
struct cpufreq_policy {int rwsem; struct completion kobj_unregister; struct kobject kobj; } ;


 int cpufreq_stats_free_table (struct cpufreq_policy*) ;
 int down_write (int *) ;
 int kobject_put (struct kobject*) ;
 int pr_debug (char*) ;
 int up_write (int *) ;
 int wait_for_completion (struct completion*) ;

__attribute__((used)) static void cpufreq_policy_put_kobj(struct cpufreq_policy *policy)
{
 struct kobject *kobj;
 struct completion *cmp;

 down_write(&policy->rwsem);
 cpufreq_stats_free_table(policy);
 kobj = &policy->kobj;
 cmp = &policy->kobj_unregister;
 up_write(&policy->rwsem);
 kobject_put(kobj);






 pr_debug("waiting for dropping of refcount\n");
 wait_for_completion(cmp);
 pr_debug("wait complete\n");
}
