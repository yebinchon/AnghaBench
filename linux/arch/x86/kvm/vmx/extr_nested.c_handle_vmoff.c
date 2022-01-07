
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int KVM_REQ_EVENT ;
 int free_nested (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int nested_vmx_check_permission (struct kvm_vcpu*) ;
 int nested_vmx_succeed (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_vmoff(struct kvm_vcpu *vcpu)
{
 if (!nested_vmx_check_permission(vcpu))
  return 1;

 free_nested(vcpu);


 kvm_make_request(KVM_REQ_EVENT, vcpu);

 return nested_vmx_succeed(vcpu);
}
