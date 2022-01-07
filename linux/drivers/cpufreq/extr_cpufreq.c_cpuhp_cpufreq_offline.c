
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpufreq_offline (unsigned int) ;

__attribute__((used)) static int cpuhp_cpufreq_offline(unsigned int cpu)
{
 cpufreq_offline(cpu);

 return 0;
}
