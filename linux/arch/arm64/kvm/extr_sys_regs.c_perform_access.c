
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int dummy; } ;
struct sys_reg_desc {int (* access ) (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ;} ;
struct kvm_vcpu {int dummy; } ;


 int BUG_ON (int) ;
 int kvm_inject_undefined (struct kvm_vcpu*) ;
 int kvm_skip_instr (struct kvm_vcpu*,int ) ;
 int kvm_vcpu_trap_il_is32bit (struct kvm_vcpu*) ;
 scalar_t__ likely (int ) ;
 int stub1 (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ;
 scalar_t__ sysreg_hidden_from_guest (struct kvm_vcpu*,struct sys_reg_desc const*) ;
 int trace_kvm_sys_access (int ,struct sys_reg_params*,struct sys_reg_desc const*) ;
 int * vcpu_pc (struct kvm_vcpu*) ;

__attribute__((used)) static void perform_access(struct kvm_vcpu *vcpu,
      struct sys_reg_params *params,
      const struct sys_reg_desc *r)
{
 trace_kvm_sys_access(*vcpu_pc(vcpu), params, r);


 if (sysreg_hidden_from_guest(vcpu, r)) {
  kvm_inject_undefined(vcpu);
  return;
 }






 BUG_ON(!r->access);


 if (likely(r->access(vcpu, params, r)))
  kvm_skip_instr(vcpu, kvm_vcpu_trap_il_is32bit(vcpu));
}
