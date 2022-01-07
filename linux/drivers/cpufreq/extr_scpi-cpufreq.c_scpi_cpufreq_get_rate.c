
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scpi_data {int clk; } ;
struct cpufreq_policy {struct scpi_data* driver_data; } ;


 unsigned long clk_get_rate (int ) ;
 struct cpufreq_policy* cpufreq_cpu_get_raw (unsigned int) ;

__attribute__((used)) static unsigned int scpi_cpufreq_get_rate(unsigned int cpu)
{
 struct cpufreq_policy *policy = cpufreq_cpu_get_raw(cpu);
 struct scpi_data *priv = policy->driver_data;
 unsigned long rate = clk_get_rate(priv->clk);

 return rate / 1000;
}
