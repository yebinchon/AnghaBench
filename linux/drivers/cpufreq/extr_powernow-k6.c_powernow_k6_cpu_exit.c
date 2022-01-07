
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int cur; } ;
struct cpufreq_freqs {scalar_t__ new; scalar_t__ flags; int old; } ;
struct TYPE_2__ {scalar_t__ frequency; scalar_t__ driver_data; } ;


 scalar_t__ CPUFREQ_TABLE_END ;
 TYPE_1__* clock_ratio ;
 int cpufreq_freq_transition_begin (struct cpufreq_policy*,struct cpufreq_freqs*) ;
 int cpufreq_freq_transition_end (struct cpufreq_policy*,struct cpufreq_freqs*,int ) ;
 scalar_t__ max_multiplier ;
 int powernow_k6_target (struct cpufreq_policy*,unsigned int) ;

__attribute__((used)) static int powernow_k6_cpu_exit(struct cpufreq_policy *policy)
{
 unsigned int i;

 for (i = 0; (clock_ratio[i].frequency != CPUFREQ_TABLE_END); i++) {
  if (clock_ratio[i].driver_data == max_multiplier) {
   struct cpufreq_freqs freqs;

   freqs.old = policy->cur;
   freqs.new = clock_ratio[i].frequency;
   freqs.flags = 0;

   cpufreq_freq_transition_begin(policy, &freqs);
   powernow_k6_target(policy, i);
   cpufreq_freq_transition_end(policy, &freqs, 0);
   break;
  }
 }
 return 0;
}
