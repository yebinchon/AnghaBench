
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUFREQ_HIGH ;
 scalar_t__ pfunc_cpu0_volt_high ;
 scalar_t__ pfunc_cpu0_volt_low ;
 scalar_t__ pfunc_cpu1_volt_high ;
 scalar_t__ pfunc_cpu1_volt_low ;
 int pmf_call_one (scalar_t__,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void g5_pfunc_switch_volt(int speed_mode)
{
 if (speed_mode == CPUFREQ_HIGH) {
  if (pfunc_cpu0_volt_high)
   pmf_call_one(pfunc_cpu0_volt_high, ((void*)0));
  if (pfunc_cpu1_volt_high)
   pmf_call_one(pfunc_cpu1_volt_high, ((void*)0));
 } else {
  if (pfunc_cpu0_volt_low)
   pmf_call_one(pfunc_cpu0_volt_low, ((void*)0));
  if (pfunc_cpu1_volt_low)
   pmf_call_one(pfunc_cpu1_volt_low, ((void*)0));
 }
 usleep_range(10000, 10000);
}
