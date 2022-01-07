
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vmentry_ctrl; } ;


 scalar_t__ PT_MODE_SYSTEM ;
 int VM_ENTRY_LOAD_IA32_EFER ;
 int VM_ENTRY_LOAD_IA32_PERF_GLOBAL_CTRL ;
 int VM_ENTRY_LOAD_IA32_RTIT_CTL ;
 int VM_ENTRY_PT_CONCEAL_PIP ;
 scalar_t__ pt_mode ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline u32 vmx_vmentry_ctrl(void)
{
 u32 vmentry_ctrl = vmcs_config.vmentry_ctrl;
 if (pt_mode == PT_MODE_SYSTEM)
  vmentry_ctrl &= ~(VM_ENTRY_PT_CONCEAL_PIP |
      VM_ENTRY_LOAD_IA32_RTIT_CTL);

 return vmentry_ctrl &
  ~(VM_ENTRY_LOAD_IA32_PERF_GLOBAL_CTRL | VM_ENTRY_LOAD_IA32_EFER);
}
