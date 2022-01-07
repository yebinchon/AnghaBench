
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpu; } ;


 int MAX_CLUSTERS ;
 int * cdev ;
 int cpu_to_cluster (int ) ;
 int of_cpufreq_cooling_register (struct cpufreq_policy*) ;

__attribute__((used)) static void bL_cpufreq_ready(struct cpufreq_policy *policy)
{
 int cur_cluster = cpu_to_cluster(policy->cpu);


 if (cur_cluster >= MAX_CLUSTERS)
  return;

 cdev[cur_cluster] = of_cpufreq_cooling_register(policy);
}
