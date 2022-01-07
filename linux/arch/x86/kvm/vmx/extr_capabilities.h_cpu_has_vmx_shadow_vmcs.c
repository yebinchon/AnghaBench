
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int cpu_based_2nd_exec_ctrl; } ;


 int MSR_IA32_VMX_MISC ;
 int MSR_IA32_VMX_MISC_VMWRITE_SHADOW_RO_FIELDS ;
 int SECONDARY_EXEC_SHADOW_VMCS ;
 int rdmsrl (int ,int) ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline bool cpu_has_vmx_shadow_vmcs(void)
{
 u64 vmx_msr;


 rdmsrl(MSR_IA32_VMX_MISC, vmx_msr);
 if (!(vmx_msr & MSR_IA32_VMX_MISC_VMWRITE_SHADOW_RO_FIELDS))
  return 0;

 return vmcs_config.cpu_based_2nd_exec_ctrl &
  SECONDARY_EXEC_SHADOW_VMCS;
}
