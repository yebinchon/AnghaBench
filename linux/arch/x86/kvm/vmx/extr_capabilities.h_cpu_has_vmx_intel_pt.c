
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int cpu_based_2nd_exec_ctrl; int vmexit_ctrl; int vmentry_ctrl; } ;


 int MSR_IA32_VMX_MISC ;
 int MSR_IA32_VMX_MISC_INTEL_PT ;
 int SECONDARY_EXEC_PT_USE_GPA ;
 int VM_ENTRY_LOAD_IA32_RTIT_CTL ;
 int VM_EXIT_CLEAR_IA32_RTIT_CTL ;
 int rdmsrl (int ,int) ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline bool cpu_has_vmx_intel_pt(void)
{
 u64 vmx_msr;

 rdmsrl(MSR_IA32_VMX_MISC, vmx_msr);
 return (vmx_msr & MSR_IA32_VMX_MISC_INTEL_PT) &&
  (vmcs_config.cpu_based_2nd_exec_ctrl & SECONDARY_EXEC_PT_USE_GPA) &&
  (vmcs_config.vmexit_ctrl & VM_EXIT_CLEAR_IA32_RTIT_CTL) &&
  (vmcs_config.vmentry_ctrl & VM_ENTRY_LOAD_IA32_RTIT_CTL);
}
