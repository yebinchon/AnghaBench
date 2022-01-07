
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vcpu_vmx {int vcpu; } ;
struct TYPE_2__ {int pin_based_exec_ctrl; } ;


 int PIN_BASED_POSTED_INTR ;
 int PIN_BASED_VIRTUAL_NMIS ;
 int PIN_BASED_VMX_PREEMPTION_TIMER ;
 int enable_preemption_timer ;
 int enable_vnmi ;
 int kvm_vcpu_apicv_active (int *) ;
 TYPE_1__ vmcs_config ;

u32 vmx_pin_based_exec_ctrl(struct vcpu_vmx *vmx)
{
 u32 pin_based_exec_ctrl = vmcs_config.pin_based_exec_ctrl;

 if (!kvm_vcpu_apicv_active(&vmx->vcpu))
  pin_based_exec_ctrl &= ~PIN_BASED_POSTED_INTR;

 if (!enable_vnmi)
  pin_based_exec_ctrl &= ~PIN_BASED_VIRTUAL_NMIS;

 if (!enable_preemption_timer)
  pin_based_exec_ctrl &= ~PIN_BASED_VMX_PREEMPTION_TIMER;

 return pin_based_exec_ctrl;
}
