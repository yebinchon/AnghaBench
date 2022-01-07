
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpufreq_online (unsigned int) ;

__attribute__((used)) static int cpuhp_cpufreq_online(unsigned int cpu)
{
 cpufreq_online(cpu);

 return 0;
}
