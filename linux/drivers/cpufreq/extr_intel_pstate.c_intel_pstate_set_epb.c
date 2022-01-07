
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s16 ;


 int ENXIO ;
 int MSR_IA32_ENERGY_PERF_BIAS ;
 int X86_FEATURE_EPB ;
 int boot_cpu_has (int ) ;
 int rdmsrl_on_cpu (int,int ,int*) ;
 int wrmsrl_on_cpu (int,int ,int) ;

__attribute__((used)) static int intel_pstate_set_epb(int cpu, s16 pref)
{
 u64 epb;
 int ret;

 if (!boot_cpu_has(X86_FEATURE_EPB))
  return -ENXIO;

 ret = rdmsrl_on_cpu(cpu, MSR_IA32_ENERGY_PERF_BIAS, &epb);
 if (ret)
  return ret;

 epb = (epb & ~0x0f) | pref;
 wrmsrl_on_cpu(cpu, MSR_IA32_ENERGY_PERF_BIAS, epb);

 return 0;
}
