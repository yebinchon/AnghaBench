
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int frequency; } ;


 TYPE_1__* maple_cpu_freqs ;
 size_t maple_pmode_cur ;

__attribute__((used)) static unsigned int maple_cpufreq_get_speed(unsigned int cpu)
{
 return maple_cpu_freqs[maple_pmode_cur].frequency;
}
