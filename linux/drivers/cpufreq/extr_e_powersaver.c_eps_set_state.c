
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct eps_cpu_data {int dummy; } ;
struct cpufreq_policy {int dummy; } ;


 int ENODEV ;
 int MSR_IA32_PERF_CTL ;
 int MSR_IA32_PERF_STATUS ;
 int pr_info (char*,int) ;
 int rdmsr (int ,int,int) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;
 int wrmsr (int ,int,int ) ;

__attribute__((used)) static int eps_set_state(struct eps_cpu_data *centaur,
    struct cpufreq_policy *policy,
    u32 dest_state)
{
 u32 lo, hi;
 int i;


 rdmsr(MSR_IA32_PERF_STATUS, lo, hi);
 i = 0;
 while (lo & ((1 << 16) | (1 << 17))) {
  udelay(16);
  rdmsr(MSR_IA32_PERF_STATUS, lo, hi);
  i++;
  if (unlikely(i > 64)) {
   return -ENODEV;
  }
 }

 wrmsr(MSR_IA32_PERF_CTL, dest_state & 0xffff, 0);

 i = 0;
 do {
  udelay(16);
  rdmsr(MSR_IA32_PERF_STATUS, lo, hi);
  i++;
  if (unlikely(i > 64)) {
   return -ENODEV;
  }
 } while (lo & ((1 << 16) | (1 << 17)));
 return 0;
}
