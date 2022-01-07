
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernv_smp_call_data {unsigned int freq; } ;


 int cpu_sibling_mask (unsigned int) ;
 int powernv_read_cpu_freq ;
 int smp_call_function_any (int ,int ,struct powernv_smp_call_data*,int) ;

__attribute__((used)) static unsigned int powernv_cpufreq_get(unsigned int cpu)
{
 struct powernv_smp_call_data freq_data;

 smp_call_function_any(cpu_sibling_mask(cpu), powernv_read_cpu_freq,
   &freq_data, 1);

 return freq_data.freq;
}
