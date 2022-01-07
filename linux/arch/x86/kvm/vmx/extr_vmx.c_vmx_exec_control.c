
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int switch_db_regs; } ;
struct TYPE_6__ {int kvm; TYPE_1__ arch; } ;
struct vcpu_vmx {TYPE_3__ vcpu; } ;
struct TYPE_5__ {int cpu_based_exec_ctrl; } ;


 int CPU_BASED_CR3_LOAD_EXITING ;
 int CPU_BASED_CR3_STORE_EXITING ;
 int CPU_BASED_CR8_LOAD_EXITING ;
 int CPU_BASED_CR8_STORE_EXITING ;
 int CPU_BASED_HLT_EXITING ;
 int CPU_BASED_INVLPG_EXITING ;
 int CPU_BASED_MONITOR_EXITING ;
 int CPU_BASED_MOV_DR_EXITING ;
 int CPU_BASED_MWAIT_EXITING ;
 int CPU_BASED_TPR_SHADOW ;
 int KVM_DEBUGREG_WONT_EXIT ;
 int cpu_need_tpr_shadow (TYPE_3__*) ;
 int enable_ept ;
 scalar_t__ kvm_hlt_in_guest (int ) ;
 scalar_t__ kvm_mwait_in_guest (int ) ;
 TYPE_2__ vmcs_config ;

u32 vmx_exec_control(struct vcpu_vmx *vmx)
{
 u32 exec_control = vmcs_config.cpu_based_exec_ctrl;

 if (vmx->vcpu.arch.switch_db_regs & KVM_DEBUGREG_WONT_EXIT)
  exec_control &= ~CPU_BASED_MOV_DR_EXITING;

 if (!cpu_need_tpr_shadow(&vmx->vcpu)) {
  exec_control &= ~CPU_BASED_TPR_SHADOW;




 }
 if (!enable_ept)
  exec_control |= CPU_BASED_CR3_STORE_EXITING |
    CPU_BASED_CR3_LOAD_EXITING |
    CPU_BASED_INVLPG_EXITING;
 if (kvm_mwait_in_guest(vmx->vcpu.kvm))
  exec_control &= ~(CPU_BASED_MWAIT_EXITING |
    CPU_BASED_MONITOR_EXITING);
 if (kvm_hlt_in_guest(vmx->vcpu.kvm))
  exec_control &= ~CPU_BASED_HLT_EXITING;
 return exec_control;
}
