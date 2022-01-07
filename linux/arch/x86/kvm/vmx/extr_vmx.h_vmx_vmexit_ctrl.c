
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vmexit_ctrl; } ;


 scalar_t__ PT_MODE_SYSTEM ;
 int VM_EXIT_CLEAR_IA32_RTIT_CTL ;
 int VM_EXIT_LOAD_IA32_EFER ;
 int VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL ;
 int VM_EXIT_PT_CONCEAL_PIP ;
 scalar_t__ pt_mode ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline u32 vmx_vmexit_ctrl(void)
{
 u32 vmexit_ctrl = vmcs_config.vmexit_ctrl;
 if (pt_mode == PT_MODE_SYSTEM)
  vmexit_ctrl &= ~(VM_EXIT_PT_CONCEAL_PIP |
     VM_EXIT_CLEAR_IA32_RTIT_CTL);

 return vmexit_ctrl &
  ~(VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL | VM_EXIT_LOAD_IA32_EFER);
}
