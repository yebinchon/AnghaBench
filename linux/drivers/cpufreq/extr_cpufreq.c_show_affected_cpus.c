
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpus; } ;
typedef int ssize_t ;


 int cpufreq_show_cpus (int ,char*) ;

__attribute__((used)) static ssize_t show_affected_cpus(struct cpufreq_policy *policy, char *buf)
{
 return cpufreq_show_cpus(policy->cpus, buf);
}
