
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int dummy; } ;


 int MSR_IA32_P5_MC_ADDR ;
 int MSR_IA32_P5_MC_TYPE ;
 int X86_CR4_MCE ;
 int X86_FEATURE_MCE ;
 int cpu_has (struct cpuinfo_x86*,int ) ;
 int cr4_set_bits (int ) ;
 int machine_check_vector ;
 int mce_p5_enabled ;
 int pentium_machine_check ;
 int pr_info (char*,...) ;
 int rdmsr (int ,int ,int ) ;
 int smp_processor_id () ;
 int wmb () ;

void intel_p5_mcheck_init(struct cpuinfo_x86 *c)
{
 u32 l, h;


 if (!mce_p5_enabled)
  return;


 if (!cpu_has(c, X86_FEATURE_MCE))
  return;

 machine_check_vector = pentium_machine_check;

 wmb();


 rdmsr(MSR_IA32_P5_MC_ADDR, l, h);
 rdmsr(MSR_IA32_P5_MC_TYPE, l, h);
 pr_info("Intel old style machine check architecture supported.\n");


 cr4_set_bits(X86_CR4_MCE);
 pr_info("Intel old style machine check reporting enabled on CPU#%d.\n",
  smp_processor_id());
}
