
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NSEC_PER_USEC ;
 unsigned int cppc_get_transition_latency (int) ;

__attribute__((used)) static unsigned int cppc_cpufreq_get_transition_delay_us(int cpu)
{
 return cppc_get_transition_latency(cpu) / NSEC_PER_USEC;
}
