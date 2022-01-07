
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int clk; } ;
struct TYPE_2__ {int driver_data; } ;


 int clk_set_rate (int ,unsigned int) ;
 int cpu_clock_freq ;
 TYPE_1__* loongson2_clockmod_table ;

__attribute__((used)) static int loongson2_cpufreq_target(struct cpufreq_policy *policy,
         unsigned int index)
{
 unsigned int freq;

 freq =
     ((cpu_clock_freq / 1000) *
      loongson2_clockmod_table[index].driver_data) / 8;


 clk_set_rate(policy->clk, freq * 1000);

 return 0;
}
