
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpudata {int cpu; } ;
typedef int s16 ;


 int MSR_HWP_REQUEST ;
 int X86_FEATURE_HWP_EPP ;
 scalar_t__ boot_cpu_has (int ) ;
 int intel_pstate_get_epb (struct cpudata*) ;
 int rdmsrl_on_cpu (int ,int ,int*) ;

__attribute__((used)) static s16 intel_pstate_get_epp(struct cpudata *cpu_data, u64 hwp_req_data)
{
 s16 epp;

 if (boot_cpu_has(X86_FEATURE_HWP_EPP)) {




  if (!hwp_req_data) {
   epp = rdmsrl_on_cpu(cpu_data->cpu, MSR_HWP_REQUEST,
         &hwp_req_data);
   if (epp)
    return epp;
  }
  epp = (hwp_req_data >> 24) & 0xff;
 } else {

  epp = intel_pstate_get_epb(cpu_data);
 }

 return epp;
}
