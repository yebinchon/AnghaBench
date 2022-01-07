
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int nested_run_pending; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;


 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_MOV_SS ;
 int GUEST_INTR_STATE_STI ;
 int GUEST_RFLAGS ;
 int X86_EFLAGS_IF ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static int vmx_interrupt_allowed(struct kvm_vcpu *vcpu)
{
 return (!to_vmx(vcpu)->nested.nested_run_pending &&
  vmcs_readl(GUEST_RFLAGS) & X86_EFLAGS_IF) &&
  !(vmcs_read32(GUEST_INTERRUPTIBILITY_INFO) &
   (GUEST_INTR_STATE_STI | GUEST_INTR_STATE_MOV_SS));
}
