
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_MOV_SS ;
 int GUEST_INTR_STATE_STI ;
 int KVM_X86_SHADOW_INT_MOV_SS ;
 int KVM_X86_SHADOW_INT_STI ;
 int vmcs_read32 (int ) ;
 int vmcs_write32 (int ,int) ;

void vmx_set_interrupt_shadow(struct kvm_vcpu *vcpu, int mask)
{
 u32 interruptibility_old = vmcs_read32(GUEST_INTERRUPTIBILITY_INFO);
 u32 interruptibility = interruptibility_old;

 interruptibility &= ~(GUEST_INTR_STATE_STI | GUEST_INTR_STATE_MOV_SS);

 if (mask & KVM_X86_SHADOW_INT_MOV_SS)
  interruptibility |= GUEST_INTR_STATE_MOV_SS;
 else if (mask & KVM_X86_SHADOW_INT_STI)
  interruptibility |= GUEST_INTR_STATE_STI;

 if ((interruptibility != interruptibility_old))
  vmcs_write32(GUEST_INTERRUPTIBILITY_INFO, interruptibility);
}
