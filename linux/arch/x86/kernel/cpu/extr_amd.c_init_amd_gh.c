
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int MSR_AMD64_BU_CFG2 ;
 int MSR_AMD64_MCx_MASK (int) ;
 int X86_BUG_AMD_TLB_MMATCH ;
 int amd_erratum_383 ;
 struct cpuinfo_x86 boot_cpu_data ;
 int check_enable_amd_mmconf_dmi () ;
 scalar_t__ cpu_has_amd_erratum (struct cpuinfo_x86*,int ) ;
 int fam10h_check_enable_mmcfg () ;
 int msr_clear_bit (int ,int) ;
 int msr_set_bit (int ,int) ;
 int set_cpu_bug (struct cpuinfo_x86*,int ) ;

__attribute__((used)) static void init_amd_gh(struct cpuinfo_x86 *c)
{
 msr_set_bit(MSR_AMD64_MCx_MASK(4), 10);
 msr_clear_bit(MSR_AMD64_BU_CFG2, 24);

 if (cpu_has_amd_erratum(c, amd_erratum_383))
  set_cpu_bug(c, X86_BUG_AMD_TLB_MMATCH);
}
