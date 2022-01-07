
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int KVM_REQ_SMI ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_vcpu_ioctl_smi(struct kvm_vcpu *vcpu)
{
 kvm_make_request(KVM_REQ_SMI, vcpu);

 return 0;
}
