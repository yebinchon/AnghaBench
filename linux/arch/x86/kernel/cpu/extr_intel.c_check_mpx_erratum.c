
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int X86_FEATURE_MPX ;
 int X86_FEATURE_SMEP ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 scalar_t__ forcempx ;
 int pr_warn (char*) ;
 int setup_clear_cpu_cap (int ) ;

void check_mpx_erratum(struct cpuinfo_x86 *c)
{
 if (forcempx)
  return;
 if (cpu_has(c, X86_FEATURE_MPX) && !cpu_has(c, X86_FEATURE_SMEP)) {
  setup_clear_cpu_cap(X86_FEATURE_MPX);
  pr_warn("x86/mpx: Disabling MPX since SMEP not present\n");
 }
}
