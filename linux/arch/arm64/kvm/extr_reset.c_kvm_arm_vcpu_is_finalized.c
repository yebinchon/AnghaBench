
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_arm_vcpu_sve_finalized (struct kvm_vcpu*) ;
 scalar_t__ vcpu_has_sve (struct kvm_vcpu*) ;

bool kvm_arm_vcpu_is_finalized(struct kvm_vcpu *vcpu)
{
 if (vcpu_has_sve(vcpu) && !kvm_arm_vcpu_sve_finalized(vcpu))
  return 0;

 return 1;
}
