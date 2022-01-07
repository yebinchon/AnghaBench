
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int dummy; } ;


 int MSR_IA32_VMX_EPT_VPID_CAP ;
 int MSR_IA32_VMX_PROCBASED_CTLS ;
 int MSR_IA32_VMX_PROCBASED_CTLS2 ;
 int X86_FEATURE_EPT ;
 int X86_FEATURE_EPT_AD ;
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
 int clear_cpu_cap (struct cpuinfo_x86*,int ) ;
 int rdmsr (int ,int,int) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int x86_VMX_FEATURE_EPT_CAP_AD ;

__attribute__((used)) static void detect_vmx_virtcap(struct cpuinfo_x86 *c)
{
 u32 vmx_msr_low, vmx_msr_high, msr_ctl, msr_ctl2;
 u32 msr_vpid_cap, msr_ept_cap;

 clear_cpu_cap(c, X86_FEATURE_TPR_SHADOW);
 clear_cpu_cap(c, X86_FEATURE_VNMI);
 clear_cpu_cap(c, X86_FEATURE_FLEXPRIORITY);
 clear_cpu_cap(c, X86_FEATURE_EPT);
 clear_cpu_cap(c, X86_FEATURE_VPID);
 clear_cpu_cap(c, X86_FEATURE_EPT_AD);

 rdmsr(MSR_IA32_VMX_PROCBASED_CTLS, vmx_msr_low, vmx_msr_high);
 msr_ctl = vmx_msr_high | vmx_msr_low;
 if (msr_ctl & 0x00200000)
  set_cpu_cap(c, X86_FEATURE_TPR_SHADOW);
 if (msr_ctl & 0x00400000)
  set_cpu_cap(c, X86_FEATURE_VNMI);
 if (msr_ctl & 0x80000000) {
  rdmsr(MSR_IA32_VMX_PROCBASED_CTLS2,
        vmx_msr_low, vmx_msr_high);
  msr_ctl2 = vmx_msr_high | vmx_msr_low;
  if ((msr_ctl2 & 0x00000001) &&
      (msr_ctl & 0x00200000))
   set_cpu_cap(c, X86_FEATURE_FLEXPRIORITY);
  if (msr_ctl2 & 0x00000002) {
   set_cpu_cap(c, X86_FEATURE_EPT);
   rdmsr(MSR_IA32_VMX_EPT_VPID_CAP,
         msr_ept_cap, msr_vpid_cap);
   if (msr_ept_cap & 0x00200000)
    set_cpu_cap(c, X86_FEATURE_EPT_AD);
  }
  if (msr_ctl2 & 0x00000020)
   set_cpu_cap(c, X86_FEATURE_VPID);
 }
}
