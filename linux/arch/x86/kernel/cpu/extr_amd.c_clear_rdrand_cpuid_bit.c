
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int BIT (int) ;
 int CONFIG_PM_SLEEP ;
 int IS_ENABLED (int ) ;
 int MSR_AMD64_CPUID_FN_1 ;
 int X86_FEATURE_RDRAND ;
 int clear_cpu_cap (struct cpuinfo_x86*,int ) ;
 int cpuid_ecx (int) ;
 int msr_clear_bit (int ,int) ;
 int pr_info_once (char*) ;
 scalar_t__ rdrand_force ;

__attribute__((used)) static void clear_rdrand_cpuid_bit(struct cpuinfo_x86 *c)
{





 if (!IS_ENABLED(CONFIG_PM_SLEEP))
  return;





 if (!(cpuid_ecx(1) & BIT(30)) || rdrand_force)
  return;

 msr_clear_bit(MSR_AMD64_CPUID_FN_1, 62);





 if (cpuid_ecx(1) & BIT(30)) {
  pr_info_once("BIOS may not properly restore RDRAND after suspend, but hypervisor does not support hiding RDRAND via CPUID.\n");
  return;
 }

 clear_cpu_cap(c, X86_FEATURE_RDRAND);
 pr_info_once("BIOS may not properly restore RDRAND after suspend, hiding RDRAND via CPUID. Use rdrand=force to reenable.\n");
}
