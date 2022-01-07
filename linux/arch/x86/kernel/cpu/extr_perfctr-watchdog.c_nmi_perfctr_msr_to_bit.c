
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x86_vendor; int x86; } ;


 int MSR_ARCH_PERFMON_PERFCTR0 ;
 unsigned int MSR_F15H_PERF_CTR ;
 int MSR_K7_PERFCTR0 ;
 int MSR_KNC_PERFCTR0 ;
 int MSR_P4_BPU_PERFCTR0 ;
 int MSR_P6_PERFCTR0 ;
 int X86_FEATURE_ARCH_PERFMON ;



 TYPE_1__ boot_cpu_data ;
 int cpu_has (TYPE_1__*,int ) ;

__attribute__((used)) static inline unsigned int nmi_perfctr_msr_to_bit(unsigned int msr)
{

 switch (boot_cpu_data.x86_vendor) {
 case 129:
 case 130:
  if (msr >= MSR_F15H_PERF_CTR)
   return (msr - MSR_F15H_PERF_CTR) >> 1;
  return msr - MSR_K7_PERFCTR0;
 case 128:
  if (cpu_has(&boot_cpu_data, X86_FEATURE_ARCH_PERFMON))
   return msr - MSR_ARCH_PERFMON_PERFCTR0;

  switch (boot_cpu_data.x86) {
  case 6:
   return msr - MSR_P6_PERFCTR0;
  case 11:
   return msr - MSR_KNC_PERFCTR0;
  case 15:
   return msr - MSR_P4_BPU_PERFCTR0;
  }
 }
 return 0;
}
