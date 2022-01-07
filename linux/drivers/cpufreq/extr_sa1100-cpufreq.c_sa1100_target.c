
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {unsigned int frequency; } ;


 unsigned int PPCR ;
 int sa1100_update_dram_timings (unsigned int,unsigned int) ;
 TYPE_1__* sa11x0_freq_table ;
 unsigned int sa11x0_getspeed (int ) ;

__attribute__((used)) static int sa1100_target(struct cpufreq_policy *policy, unsigned int ppcr)
{
 unsigned int cur = sa11x0_getspeed(0);
 unsigned int new_freq;

 new_freq = sa11x0_freq_table[ppcr].frequency;

 if (new_freq > cur)
  sa1100_update_dram_timings(cur, new_freq);

 PPCR = ppcr;

 if (new_freq < cur)
  sa1100_update_dram_timings(cur, new_freq);

 return 0;
}
