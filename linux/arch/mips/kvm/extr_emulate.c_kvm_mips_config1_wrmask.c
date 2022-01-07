
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int arch; } ;


 unsigned int MIPS_CONF1_FP ;
 scalar_t__ kvm_mips_guest_can_have_fpu (int *) ;

unsigned int kvm_mips_config1_wrmask(struct kvm_vcpu *vcpu)
{
 unsigned int mask = 0;


 if (kvm_mips_guest_can_have_fpu(&vcpu->arch))
  mask |= MIPS_CONF1_FP;

 return mask;
}
