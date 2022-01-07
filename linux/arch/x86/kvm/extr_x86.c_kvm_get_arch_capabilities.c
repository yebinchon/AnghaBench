
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ARCH_CAP_MDS_NO ;
 int ARCH_CAP_PSCHANGE_MC_NO ;
 int ARCH_CAP_RDCL_NO ;
 int ARCH_CAP_SKIP_VMENTRY_L1DFLUSH ;
 int ARCH_CAP_SSB_NO ;
 int ARCH_CAP_TSX_CTRL_MSR ;
 int MSR_IA32_ARCH_CAPABILITIES ;
 scalar_t__ VMENTER_L1D_FLUSH_NEVER ;
 int X86_BUG_CPU_MELTDOWN ;
 int X86_BUG_MDS ;
 int X86_BUG_SPEC_STORE_BYPASS ;
 int X86_BUG_TAA ;
 int X86_FEATURE_ARCH_CAPABILITIES ;
 int X86_FEATURE_RTM ;
 scalar_t__ boot_cpu_has (int ) ;
 scalar_t__ boot_cpu_has_bug (int ) ;
 scalar_t__ l1tf_vmx_mitigation ;
 int rdmsrl (int ,int) ;

__attribute__((used)) static u64 kvm_get_arch_capabilities(void)
{
 u64 data = 0;

 if (boot_cpu_has(X86_FEATURE_ARCH_CAPABILITIES))
  rdmsrl(MSR_IA32_ARCH_CAPABILITIES, data);







 data |= ARCH_CAP_PSCHANGE_MC_NO;
 if (l1tf_vmx_mitigation != VMENTER_L1D_FLUSH_NEVER)
  data |= ARCH_CAP_SKIP_VMENTRY_L1DFLUSH;

 if (!boot_cpu_has_bug(X86_BUG_CPU_MELTDOWN))
  data |= ARCH_CAP_RDCL_NO;
 if (!boot_cpu_has_bug(X86_BUG_SPEC_STORE_BYPASS))
  data |= ARCH_CAP_SSB_NO;
 if (!boot_cpu_has_bug(X86_BUG_MDS))
  data |= ARCH_CAP_MDS_NO;
 if (boot_cpu_has_bug(X86_BUG_TAA) && boot_cpu_has(X86_FEATURE_RTM) &&
     (data & ARCH_CAP_TSX_CTRL_MSR))
  data &= ~ARCH_CAP_MDS_NO;

 return data;
}
