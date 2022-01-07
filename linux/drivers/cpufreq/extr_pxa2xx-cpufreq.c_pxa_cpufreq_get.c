
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_cpufreq_data {int clk_core; } ;


 scalar_t__ clk_get_rate (int ) ;
 struct pxa_cpufreq_data* cpufreq_get_driver_data () ;

__attribute__((used)) static unsigned int pxa_cpufreq_get(unsigned int cpu)
{
 struct pxa_cpufreq_data *data = cpufreq_get_driver_data();

 return (unsigned int) clk_get_rate(data->clk_core) / 1000;
}
