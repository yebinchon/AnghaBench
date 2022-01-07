
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int pi_desc; } ;
struct kvm_vcpu {int dummy; } ;


 int kvm_vcpu_kick (struct kvm_vcpu*) ;
 int kvm_vcpu_trigger_posted_interrupt (struct kvm_vcpu*,int) ;
 scalar_t__ pi_test_and_set_on (int *) ;
 scalar_t__ pi_test_and_set_pir (int,int *) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_deliver_nested_posted_interrupt (struct kvm_vcpu*,int) ;

__attribute__((used)) static void vmx_deliver_posted_interrupt(struct kvm_vcpu *vcpu, int vector)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 int r;

 r = vmx_deliver_nested_posted_interrupt(vcpu, vector);
 if (!r)
  return;

 if (pi_test_and_set_pir(vector, &vmx->pi_desc))
  return;


 if (pi_test_and_set_on(&vmx->pi_desc))
  return;

 if (!kvm_vcpu_trigger_posted_interrupt(vcpu, 0))
  kvm_vcpu_kick(vcpu);
}
