
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpudata {int cpu; } ;
typedef int s16 ;


 int ENXIO ;
 int MSR_IA32_ENERGY_PERF_BIAS ;
 int X86_FEATURE_EPB ;
 int boot_cpu_has (int ) ;
 int rdmsrl_on_cpu (int ,int ,int*) ;

__attribute__((used)) static s16 intel_pstate_get_epb(struct cpudata *cpu_data)
{
 u64 epb;
 int ret;

 if (!boot_cpu_has(X86_FEATURE_EPB))
  return -ENXIO;

 ret = rdmsrl_on_cpu(cpu_data->cpu, MSR_IA32_ENERGY_PERF_BIAS, &epb);
 if (ret)
  return (s16)ret;

 return (s16)(epb & 0x0f);
}
