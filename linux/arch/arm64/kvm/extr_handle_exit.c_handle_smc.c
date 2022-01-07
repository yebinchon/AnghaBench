
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;


 int kvm_skip_instr (struct kvm_vcpu*,int ) ;
 int kvm_vcpu_trap_il_is32bit (struct kvm_vcpu*) ;
 int vcpu_set_reg (struct kvm_vcpu*,int ,unsigned long) ;

__attribute__((used)) static int handle_smc(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 vcpu_set_reg(vcpu, 0, ~0UL);
 kvm_skip_instr(vcpu, kvm_vcpu_trap_il_is32bit(vcpu));
 return 1;
}
