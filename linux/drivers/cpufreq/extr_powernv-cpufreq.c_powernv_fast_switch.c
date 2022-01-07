
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct powernv_smp_call_data {int gpstate_id; int pstate_id; } ;
struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {unsigned int frequency; int driver_data; } ;


 int cpufreq_table_find_index_dl (struct cpufreq_policy*,unsigned int) ;
 TYPE_1__* powernv_freqs ;
 int set_pstate (struct powernv_smp_call_data*) ;

__attribute__((used)) static unsigned int powernv_fast_switch(struct cpufreq_policy *policy,
     unsigned int target_freq)
{
 int index;
 struct powernv_smp_call_data freq_data;

 index = cpufreq_table_find_index_dl(policy, target_freq);
 freq_data.pstate_id = powernv_freqs[index].driver_data;
 freq_data.gpstate_id = powernv_freqs[index].driver_data;
 set_pstate(&freq_data);

 return powernv_freqs[index].frequency;
}
