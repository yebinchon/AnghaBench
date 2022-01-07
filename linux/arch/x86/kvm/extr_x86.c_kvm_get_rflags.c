
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int guest_debug; } ;
struct TYPE_2__ {unsigned long (* get_rflags ) (struct kvm_vcpu*) ;} ;


 int KVM_GUESTDBG_SINGLESTEP ;
 unsigned long X86_EFLAGS_TF ;
 TYPE_1__* kvm_x86_ops ;
 unsigned long stub1 (struct kvm_vcpu*) ;

unsigned long kvm_get_rflags(struct kvm_vcpu *vcpu)
{
 unsigned long rflags;

 rflags = kvm_x86_ops->get_rflags(vcpu);
 if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP)
  rflags &= ~X86_EFLAGS_TF;
 return rflags;
}
