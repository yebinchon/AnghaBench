
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int transition_latency; } ;
struct cpufreq_policy {unsigned int transition_delay_us; TYPE_1__ cpuinfo; } ;


 unsigned int LATENCY_MULTIPLIER ;
 unsigned int NSEC_PER_USEC ;
 unsigned int min (unsigned int,unsigned int) ;

unsigned int cpufreq_policy_transition_delay_us(struct cpufreq_policy *policy)
{
 unsigned int latency;

 if (policy->transition_delay_us)
  return policy->transition_delay_us;

 latency = policy->cpuinfo.transition_latency / NSEC_PER_USEC;
 if (latency) {
  return min(latency * LATENCY_MULTIPLIER, (unsigned int)10000);
 }

 return LATENCY_MULTIPLIER;
}
