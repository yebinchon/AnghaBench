
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int arch; } ;


 unsigned int MIPS_CONF3_CTXTC ;
 unsigned int MIPS_CONF3_MSA ;
 unsigned int MIPS_CONF3_ULRI ;
 unsigned int MIPS_CONF_M ;
 scalar_t__ kvm_mips_guest_can_have_msa (int *) ;
 unsigned int kvm_vz_config3_guest_wrmask (struct kvm_vcpu*) ;

__attribute__((used)) static inline unsigned int kvm_vz_config3_user_wrmask(struct kvm_vcpu *vcpu)
{
 unsigned int mask = kvm_vz_config3_guest_wrmask(vcpu) | MIPS_CONF_M |
  MIPS_CONF3_ULRI | MIPS_CONF3_CTXTC;


 if (kvm_mips_guest_can_have_msa(&vcpu->arch))
  mask |= MIPS_CONF3_MSA;

 return mask;
}
