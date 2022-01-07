
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

u32 vmx_get_interrupt_shadow(struct kvm_vcpu *vcpu)
{
 u32 interruptibility = vmcs_read32(GUEST_INTERRUPTIBILITY_INFO);
 int ret = 0;

 if (interruptibility & GUEST_INTR_STATE_STI)
  ret |= KVM_X86_SHADOW_INT_STI;
 if (interruptibility & GUEST_INTR_STATE_MOV_SS)
  ret |= KVM_X86_SHADOW_INT_MOV_SS;

 return ret;
}
