
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transition_latency; } ;
struct cpufreq_policy {int freq_table; TYPE_1__ cpuinfo; int shared_type; } ;


 int CPUFREQ_SHARED_TYPE_HW ;
 int freq_table ;

__attribute__((used)) static int sfi_cpufreq_cpu_init(struct cpufreq_policy *policy)
{
 policy->shared_type = CPUFREQ_SHARED_TYPE_HW;
 policy->cpuinfo.transition_latency = 100000;
 policy->freq_table = freq_table;

 return 0;
}
