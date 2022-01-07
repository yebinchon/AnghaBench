
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long ARRAY_SIZE (int ) ;
 int kvm_trap_emul_get_one_regs ;

__attribute__((used)) static unsigned long kvm_trap_emul_num_regs(struct kvm_vcpu *vcpu)
{
 return ARRAY_SIZE(kvm_trap_emul_get_one_regs);
}
