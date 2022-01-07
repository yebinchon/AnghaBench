
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct powernv_smp_call_data {void* gpstate_id; void* pstate_id; } ;
struct global_pstate_info {int timer; } ;
struct cpufreq_policy {int cpu; struct global_pstate_info* driver_data; } ;
struct TYPE_2__ {int min; } ;


 int del_timer_sync (int *) ;
 void* idx_to_pstate (int ) ;
 TYPE_1__ powernv_pstate_info ;
 int set_pstate ;
 int smp_call_function_single (int ,int ,struct powernv_smp_call_data*,int) ;

__attribute__((used)) static void powernv_cpufreq_stop_cpu(struct cpufreq_policy *policy)
{
 struct powernv_smp_call_data freq_data;
 struct global_pstate_info *gpstates = policy->driver_data;

 freq_data.pstate_id = idx_to_pstate(powernv_pstate_info.min);
 freq_data.gpstate_id = idx_to_pstate(powernv_pstate_info.min);
 smp_call_function_single(policy->cpu, set_pstate, &freq_data, 1);
 if (gpstates)
  del_timer_sync(&gpstates->timer);
}
