
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int driver_data; } ;


 int kfree (int ) ;

__attribute__((used)) static int powernv_cpufreq_cpu_exit(struct cpufreq_policy *policy)
{

 kfree(policy->driver_data);

 return 0;
}
