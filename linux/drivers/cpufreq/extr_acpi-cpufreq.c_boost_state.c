
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int x86_vendor; } ;


 int MSR_IA32_MISC_ENABLE ;
 int MSR_IA32_MISC_ENABLE_TURBO_DISABLE ;
 int MSR_K7_HWCR ;
 int MSR_K7_HWCR_CPB_DIS ;



 TYPE_1__ boot_cpu_data ;
 int rdmsr_on_cpu (unsigned int,int ,int*,int*) ;

__attribute__((used)) static bool boost_state(unsigned int cpu)
{
 u32 lo, hi;
 u64 msr;

 switch (boot_cpu_data.x86_vendor) {
 case 128:
  rdmsr_on_cpu(cpu, MSR_IA32_MISC_ENABLE, &lo, &hi);
  msr = lo | ((u64)hi << 32);
  return !(msr & MSR_IA32_MISC_ENABLE_TURBO_DISABLE);
 case 129:
 case 130:
  rdmsr_on_cpu(cpu, MSR_K7_HWCR, &lo, &hi);
  msr = lo | ((u64)hi << 32);
  return !(msr & MSR_K7_HWCR_CPB_DIS);
 }
 return 0;
}
