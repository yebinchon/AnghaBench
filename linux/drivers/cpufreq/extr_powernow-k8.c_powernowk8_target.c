
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernowk8_target_arg {unsigned int newstate; struct cpufreq_policy* pol; } ;
struct cpufreq_policy {int cpu; } ;


 int powernowk8_target_fn ;
 int work_on_cpu (int ,int ,struct powernowk8_target_arg*) ;

__attribute__((used)) static int powernowk8_target(struct cpufreq_policy *pol, unsigned index)
{
 struct powernowk8_target_arg pta = { .pol = pol, .newstate = index };

 return work_on_cpu(pol->cpu, powernowk8_target_fn, &pta);
}
