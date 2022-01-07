
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int __inject_sigp_emergency (struct kvm_vcpu*,struct kvm_vcpu*) ;

__attribute__((used)) static int __sigp_emergency(struct kvm_vcpu *vcpu, struct kvm_vcpu *dst_vcpu)
{
 return __inject_sigp_emergency(vcpu, dst_vcpu);
}
