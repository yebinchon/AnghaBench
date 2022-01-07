
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int X86_FEATURE_CPUID ;
 int X86_FEATURE_FPU ;
 int boot_cpu_data ;
 int boot_cpu_has (int ) ;
 scalar_t__ cpu_caps_cleared ;
 scalar_t__ fpu__probe_without_cpuid () ;
 int pr_emerg (char*) ;
 int setup_clear_cpu_cap (int ) ;
 int setup_force_cpu_cap (int ) ;
 int test_bit (int ,unsigned long*) ;
 int test_cpu_cap (int *,int ) ;

__attribute__((used)) static void fpu__init_system_early_generic(struct cpuinfo_x86 *c)
{
 if (!boot_cpu_has(X86_FEATURE_CPUID) &&
     !test_bit(X86_FEATURE_FPU, (unsigned long *)cpu_caps_cleared)) {
  if (fpu__probe_without_cpuid())
   setup_force_cpu_cap(X86_FEATURE_FPU);
  else
   setup_clear_cpu_cap(X86_FEATURE_FPU);
 }


 if (!test_cpu_cap(&boot_cpu_data, X86_FEATURE_FPU)) {
  pr_emerg("x86/fpu: Giving up, no FPU found and no math emulation present\n");
  for (;;)
   asm volatile("hlt");
 }

}
