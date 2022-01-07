
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpudata {int dummy; } ;
typedef int s16 ;


 int EINVAL ;
 int HWP_EPP_BALANCE_PERFORMANCE ;
 int HWP_EPP_BALANCE_POWERSAVE ;
 int HWP_EPP_PERFORMANCE ;
 int X86_FEATURE_EPB ;
 int X86_FEATURE_HWP_EPP ;
 scalar_t__ boot_cpu_has (int ) ;
 int intel_pstate_get_epp (struct cpudata*,int ) ;

__attribute__((used)) static int intel_pstate_get_energy_pref_index(struct cpudata *cpu_data)
{
 s16 epp;
 int index = -EINVAL;

 epp = intel_pstate_get_epp(cpu_data, 0);
 if (epp < 0)
  return epp;

 if (boot_cpu_has(X86_FEATURE_HWP_EPP)) {
  if (epp == HWP_EPP_PERFORMANCE)
   return 1;
  if (epp <= HWP_EPP_BALANCE_PERFORMANCE)
   return 2;
  if (epp <= HWP_EPP_BALANCE_POWERSAVE)
   return 3;
  else
   return 4;
 } else if (boot_cpu_has(X86_FEATURE_EPB)) {
  index = (epp >> 2) + 1;
 }

 return index;
}
