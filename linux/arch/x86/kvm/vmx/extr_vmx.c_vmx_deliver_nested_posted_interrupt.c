
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int posted_intr_nv; int pi_pending; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;


 int KVM_REQ_EVENT ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_kick (struct kvm_vcpu*) ;
 int kvm_vcpu_trigger_posted_interrupt (struct kvm_vcpu*,int) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static int vmx_deliver_nested_posted_interrupt(struct kvm_vcpu *vcpu,
      int vector)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (is_guest_mode(vcpu) &&
     vector == vmx->nested.posted_intr_nv) {




  vmx->nested.pi_pending = 1;
  kvm_make_request(KVM_REQ_EVENT, vcpu);

  if (!kvm_vcpu_trigger_posted_interrupt(vcpu, 1))
   kvm_vcpu_kick(vcpu);
  return 0;
 }
 return -1;
}
