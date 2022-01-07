
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cur_freq ;

__attribute__((used)) static unsigned int pmac_cpufreq_get_speed(unsigned int cpu)
{
 return cur_freq;
}
