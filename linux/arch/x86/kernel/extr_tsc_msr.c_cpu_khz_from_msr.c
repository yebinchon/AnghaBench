
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct x86_cpu_id {scalar_t__ driver_data; } ;
struct freq_desc {int* freqs; scalar_t__ msr_plat; } ;


 int HZ ;
 int MSR_FSB_FREQ ;
 int MSR_IA32_PERF_STATUS ;
 int MSR_PLATFORM_INFO ;
 int X86_FEATURE_TSC_KNOWN_FREQ ;
 int X86_FEATURE_TSC_RELIABLE ;
 int lapic_timer_period ;
 int rdmsr (int ,int,int) ;
 int setup_force_cpu_cap (int ) ;
 int tsc_msr_cpu_ids ;
 struct x86_cpu_id* x86_match_cpu (int ) ;

unsigned long cpu_khz_from_msr(void)
{
 u32 lo, hi, ratio, freq;
 const struct freq_desc *freq_desc;
 const struct x86_cpu_id *id;
 unsigned long res;

 id = x86_match_cpu(tsc_msr_cpu_ids);
 if (!id)
  return 0;

 freq_desc = (struct freq_desc *)id->driver_data;
 if (freq_desc->msr_plat) {
  rdmsr(MSR_PLATFORM_INFO, lo, hi);
  ratio = (lo >> 8) & 0xff;
 } else {
  rdmsr(MSR_IA32_PERF_STATUS, lo, hi);
  ratio = (hi >> 8) & 0x1f;
 }


 rdmsr(MSR_FSB_FREQ, lo, hi);


 freq = freq_desc->freqs[lo & 0x7];


 res = freq * ratio;
 setup_force_cpu_cap(X86_FEATURE_TSC_KNOWN_FREQ);
 setup_force_cpu_cap(X86_FEATURE_TSC_RELIABLE);

 return res;
}
