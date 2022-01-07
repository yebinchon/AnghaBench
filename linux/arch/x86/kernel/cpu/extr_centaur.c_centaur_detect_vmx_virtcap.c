
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int dummy; } ;


 int MSR_IA32_VMX_PROCBASED_CTLS ;
 int MSR_IA32_VMX_PROCBASED_CTLS2 ;
 int X86_FEATURE_EPT ;
 int X86_FEATURE_FLEXPRIORITY ;
 int X86_FEATURE_TPR_SHADOW ;
 int X86_FEATURE_VNMI ;
 int X86_FEATURE_VPID ;
 int X86_VMX_FEATURE_PROC_CTLS2_EPT ;
 int X86_VMX_FEATURE_PROC_CTLS2_VIRT_APIC ;
 int X86_VMX_FEATURE_PROC_CTLS2_VPID ;
 int X86_VMX_FEATURE_PROC_CTLS_2ND_CTLS ;
 int X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW ;
 int X86_VMX_FEATURE_PROC_CTLS_VNMI ;
 int rdmsr (int ,int,int) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;

__attribute__((used)) static void centaur_detect_vmx_virtcap(struct cpuinfo_x86 *c)
{
 u32 vmx_msr_low, vmx_msr_high, msr_ctl, msr_ctl2;

 rdmsr(MSR_IA32_VMX_PROCBASED_CTLS, vmx_msr_low, vmx_msr_high);
 msr_ctl = vmx_msr_high | vmx_msr_low;

 if (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW)
  set_cpu_cap(c, X86_FEATURE_TPR_SHADOW);
 if (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_VNMI)
  set_cpu_cap(c, X86_FEATURE_VNMI);
 if (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_2ND_CTLS) {
  rdmsr(MSR_IA32_VMX_PROCBASED_CTLS2,
        vmx_msr_low, vmx_msr_high);
  msr_ctl2 = vmx_msr_high | vmx_msr_low;
  if ((msr_ctl2 & X86_VMX_FEATURE_PROC_CTLS2_VIRT_APIC) &&
      (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW))
   set_cpu_cap(c, X86_FEATURE_FLEXPRIORITY);
  if (msr_ctl2 & X86_VMX_FEATURE_PROC_CTLS2_EPT)
   set_cpu_cap(c, X86_FEATURE_EPT);
  if (msr_ctl2 & X86_VMX_FEATURE_PROC_CTLS2_VPID)
   set_cpu_cap(c, X86_FEATURE_VPID);
 }
}
