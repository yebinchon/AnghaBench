
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int powersave_clk; } ;


 int clk_get_rate (int ) ;
 TYPE_1__ priv ;

__attribute__((used)) static unsigned int kirkwood_cpufreq_get_cpu_frequency(unsigned int cpu)
{
 return clk_get_rate(priv.powersave_clk) / 1000;
}
