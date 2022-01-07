
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int CORE_LEVEL ;
 int MSR_HWP_STATUS ;
 int MSR_IA32_PACKAGE_THERM_STATUS ;
 int MSR_IA32_THERM_STATUS ;
 int PACKAGE_LEVEL ;
 int PACKAGE_THERM_STATUS_POWER_LIMIT ;
 int PACKAGE_THERM_STATUS_PROCHOT ;
 int POWER_LIMIT_EVENT ;
 int THERMAL_THROTTLING_EVENT ;
 int THERM_STATUS_POWER_LIMIT ;
 int THERM_STATUS_PROCHOT ;
 int X86_FEATURE_HWP ;
 int X86_FEATURE_PLN ;
 int X86_FEATURE_PTS ;
 scalar_t__ int_pln_enable ;
 int notify_package_thresholds (int) ;
 int notify_thresholds (int) ;
 int rdmsrl (int ,int) ;
 scalar_t__ static_cpu_has (int ) ;
 int therm_throt_process (int,int ,int ) ;
 scalar_t__ this_cpu_has (int ) ;
 int wrmsrl_safe (int ,int ) ;

__attribute__((used)) static void intel_thermal_interrupt(void)
{
 __u64 msr_val;

 if (static_cpu_has(X86_FEATURE_HWP))
  wrmsrl_safe(MSR_HWP_STATUS, 0);

 rdmsrl(MSR_IA32_THERM_STATUS, msr_val);


 notify_thresholds(msr_val);

 therm_throt_process(msr_val & THERM_STATUS_PROCHOT,
       THERMAL_THROTTLING_EVENT,
       CORE_LEVEL);

 if (this_cpu_has(X86_FEATURE_PLN) && int_pln_enable)
  therm_throt_process(msr_val & THERM_STATUS_POWER_LIMIT,
     POWER_LIMIT_EVENT,
     CORE_LEVEL);

 if (this_cpu_has(X86_FEATURE_PTS)) {
  rdmsrl(MSR_IA32_PACKAGE_THERM_STATUS, msr_val);

  notify_package_thresholds(msr_val);
  therm_throt_process(msr_val & PACKAGE_THERM_STATUS_PROCHOT,
     THERMAL_THROTTLING_EVENT,
     PACKAGE_LEVEL);
  if (this_cpu_has(X86_FEATURE_PLN) && int_pln_enable)
   therm_throt_process(msr_val &
     PACKAGE_THERM_STATUS_POWER_LIMIT,
     POWER_LIMIT_EVENT,
     PACKAGE_LEVEL);
 }
}
