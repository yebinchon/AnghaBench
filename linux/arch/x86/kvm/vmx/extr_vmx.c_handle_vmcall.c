
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_emulate_hypercall (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_vmcall(struct kvm_vcpu *vcpu)
{
 return kvm_emulate_hypercall(vcpu);
}
