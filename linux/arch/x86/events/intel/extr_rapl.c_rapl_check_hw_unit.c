
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_RAPL_POWER_UNIT ;
 int NR_RAPL_DOMAINS ;
 size_t PERF_RAPL_RAM ;
 int* rapl_hw_unit ;
 unsigned long long rapl_timer_ms ;
 scalar_t__ rdmsrl_safe (int ,int*) ;

__attribute__((used)) static int rapl_check_hw_unit(bool apply_quirk)
{
 u64 msr_rapl_power_unit_bits;
 int i;


 if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &msr_rapl_power_unit_bits))
  return -1;
 for (i = 0; i < NR_RAPL_DOMAINS; i++)
  rapl_hw_unit[i] = (msr_rapl_power_unit_bits >> 8) & 0x1FULL;







 if (apply_quirk)
  rapl_hw_unit[PERF_RAPL_RAM] = 16;
 rapl_timer_ms = 2;
 if (rapl_hw_unit[0] < 32) {
  rapl_timer_ms = (1000 / (2 * 100));
  rapl_timer_ms *= (1ULL << (32 - rapl_hw_unit[0] - 1));
 }
 return 0;
}
