
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_AMD64_LS_CFG ;
 int MSR_AMD64_VIRT_SPEC_CTRL ;
 int SPEC_CTRL_SSBD ;
 int X86_FEATURE_LS_CFG_SSBD ;
 int X86_FEATURE_VIRT_SSBD ;
 scalar_t__ boot_cpu_has (int ) ;
 int wrmsrl (int ,int) ;
 int x86_amd_ls_cfg_base ;
 int x86_amd_ls_cfg_ssbd_mask ;

__attribute__((used)) static void x86_amd_ssb_disable(void)
{
 u64 msrval = x86_amd_ls_cfg_base | x86_amd_ls_cfg_ssbd_mask;

 if (boot_cpu_has(X86_FEATURE_VIRT_SSBD))
  wrmsrl(MSR_AMD64_VIRT_SPEC_CTRL, SPEC_CTRL_SSBD);
 else if (boot_cpu_has(X86_FEATURE_LS_CFG_SSBD))
  wrmsrl(MSR_AMD64_LS_CFG, msrval);
}
