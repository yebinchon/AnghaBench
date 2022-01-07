
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int EINVAL ;
 int EPERM ;

 int kvm_arm_vcpu_sve_finalized (struct kvm_vcpu*) ;
 int kvm_vcpu_finalize_sve (struct kvm_vcpu*) ;
 int vcpu_has_sve (struct kvm_vcpu*) ;

int kvm_arm_vcpu_finalize(struct kvm_vcpu *vcpu, int feature)
{
 switch (feature) {
 case 128:
  if (!vcpu_has_sve(vcpu))
   return -EINVAL;

  if (kvm_arm_vcpu_sve_finalized(vcpu))
   return -EPERM;

  return kvm_vcpu_finalize_sve(vcpu);
 }

 return -EINVAL;
}
