
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ENERGY_PERF_BIAS_NORMAL ;
 int ENERGY_PERF_BIAS_PERFORMANCE ;
 int EPB_MASK ;
 int MSR_IA32_ENERGY_PERF_BIAS ;
 int pr_warn_once (char*) ;
 int rdmsrl (int ,int) ;
 int saved_epb ;
 int this_cpu_read (int ) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void intel_epb_restore(void)
{
 u64 val = this_cpu_read(saved_epb);
 u64 epb;

 rdmsrl(MSR_IA32_ENERGY_PERF_BIAS, epb);
 if (val) {
  val &= EPB_MASK;
 } else {







  val = epb & EPB_MASK;
  if (val == ENERGY_PERF_BIAS_PERFORMANCE) {
   val = ENERGY_PERF_BIAS_NORMAL;
   pr_warn_once("ENERGY_PERF_BIAS: Set to 'normal', was 'performance'\n");
  }
 }
 wrmsrl(MSR_IA32_ENERGY_PERF_BIAS, (epb & ~EPB_MASK) | val);
}
