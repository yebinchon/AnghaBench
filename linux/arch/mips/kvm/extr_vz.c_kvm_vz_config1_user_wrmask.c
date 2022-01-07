
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int arch; } ;


 unsigned int MIPS_CONF1_FP ;
 unsigned int MIPS_CONF_M ;
 scalar_t__ kvm_mips_guest_can_have_fpu (int *) ;
 unsigned int kvm_vz_config1_guest_wrmask (struct kvm_vcpu*) ;

__attribute__((used)) static inline unsigned int kvm_vz_config1_user_wrmask(struct kvm_vcpu *vcpu)
{
 unsigned int mask = kvm_vz_config1_guest_wrmask(vcpu) | MIPS_CONF_M;


 if (kvm_mips_guest_can_have_fpu(&vcpu->arch))
  mask |= MIPS_CONF1_FP;

 return mask;
}
