
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpufreq_policy {int cpu; } ;
struct TYPE_3__ {int lowest_perf; } ;
struct TYPE_4__ {int desired_perf; } ;
struct cppc_cpudata {TYPE_1__ perf_caps; TYPE_2__ perf_ctrls; } ;


 struct cppc_cpudata** all_cpu_data ;
 int cppc_set_perf (int,TYPE_2__*) ;
 int pr_debug (char*,int ,int,int) ;

__attribute__((used)) static void cppc_cpufreq_stop_cpu(struct cpufreq_policy *policy)
{
 int cpu_num = policy->cpu;
 struct cppc_cpudata *cpu = all_cpu_data[cpu_num];
 int ret;

 cpu->perf_ctrls.desired_perf = cpu->perf_caps.lowest_perf;

 ret = cppc_set_perf(cpu_num, &cpu->perf_ctrls);
 if (ret)
  pr_debug("Err setting perf value:%d on CPU:%d. ret:%d\n",
    cpu->perf_caps.lowest_perf, cpu_num, ret);
}
