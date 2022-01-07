
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int SVE_NUM_PREGS ;
 int SVE_NUM_ZREGS ;
 int WARN_ON (int) ;
 int kvm_arm_vcpu_sve_finalized (struct kvm_vcpu const*) ;
 int vcpu_has_sve (struct kvm_vcpu const*) ;
 unsigned int vcpu_sve_slices (struct kvm_vcpu const*) ;

__attribute__((used)) static unsigned long num_sve_regs(const struct kvm_vcpu *vcpu)
{
 const unsigned int slices = vcpu_sve_slices(vcpu);

 if (!vcpu_has_sve(vcpu))
  return 0;


 WARN_ON(!kvm_arm_vcpu_sve_finalized(vcpu));

 return slices * (SVE_NUM_PREGS + SVE_NUM_ZREGS + 1 )
  + 1;
}
