
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long NUM_TIMER_REGS ;
 unsigned long kvm_arm_get_fw_num_regs (struct kvm_vcpu*) ;
 unsigned long kvm_arm_num_coproc_regs (struct kvm_vcpu*) ;
 unsigned long num_core_regs () ;

unsigned long kvm_arm_num_regs(struct kvm_vcpu *vcpu)
{
 return num_core_regs() + kvm_arm_num_coproc_regs(vcpu)
  + kvm_arm_get_fw_num_regs(vcpu)
  + NUM_TIMER_REGS;
}
