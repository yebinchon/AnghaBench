
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_dbs_tuners {int freq_step; } ;
struct cpufreq_policy {int max; } ;


 unsigned int DEF_FREQUENCY_STEP ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline unsigned int get_freq_step(struct cs_dbs_tuners *cs_tuners,
      struct cpufreq_policy *policy)
{
 unsigned int freq_step = (cs_tuners->freq_step * policy->max) / 100;


 if (unlikely(freq_step == 0))
  freq_step = DEF_FREQUENCY_STEP;

 return freq_step;
}
