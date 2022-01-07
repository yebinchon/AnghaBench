
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_one_reg {int id; } ;


 int EINVAL ;
 int KVM_REG_ARM64 ;

 int KVM_REG_ARM_COPROC_MASK ;


 int KVM_REG_SIZE_MASK ;
 scalar_t__ is_timer_reg (int) ;
 int kvm_arm_set_fw_reg (struct kvm_vcpu*,struct kvm_one_reg const*) ;
 int kvm_arm_sys_reg_set_reg (struct kvm_vcpu*,struct kvm_one_reg const*) ;
 int set_core_reg (struct kvm_vcpu*,struct kvm_one_reg const*) ;
 int set_sve_reg (struct kvm_vcpu*,struct kvm_one_reg const*) ;
 int set_timer_reg (struct kvm_vcpu*,struct kvm_one_reg const*) ;

int kvm_arm_set_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
{

 if ((reg->id & ~KVM_REG_SIZE_MASK) >> 32 != KVM_REG_ARM64 >> 32)
  return -EINVAL;

 switch (reg->id & KVM_REG_ARM_COPROC_MASK) {
 case 129: return set_core_reg(vcpu, reg);
 case 128: return kvm_arm_set_fw_reg(vcpu, reg);
 case 130: return set_sve_reg(vcpu, reg);
 }

 if (is_timer_reg(reg->id))
  return set_timer_reg(vcpu, reg);

 return kvm_arm_sys_reg_set_reg(vcpu, reg);
}
