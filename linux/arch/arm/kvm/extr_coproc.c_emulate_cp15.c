
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct coproc_reg {struct coproc_reg const* (* access ) (struct kvm_vcpu*,struct coproc_params const*,struct coproc_reg const*) ;} ;
struct coproc_params {int is_write; int Op2; int CRm; int CRn; int Rt1; int Op1; } ;


 size_t ARRAY_SIZE (struct coproc_reg const*) ;
 int BUG_ON (int) ;
 struct coproc_reg const* cp15_regs ;
 struct coproc_reg* find_reg (struct coproc_params const*,struct coproc_reg const*,size_t) ;
 struct coproc_reg* get_target_table (int ,size_t*) ;
 int kvm_err (char*,int ,int ) ;
 int kvm_inject_undefined (struct kvm_vcpu*) ;
 int kvm_skip_instr (struct kvm_vcpu*,int ) ;
 int kvm_vcpu_trap_il_is32bit (struct kvm_vcpu*) ;
 scalar_t__ likely (struct coproc_reg const*) ;
 int print_cp_instr (struct coproc_params const*) ;
 struct coproc_reg const* stub1 (struct kvm_vcpu*,struct coproc_params const*,struct coproc_reg const*) ;
 int trace_kvm_emulate_cp15_imp (int ,int ,int ,int ,int ,int ) ;
 int * vcpu_cpsr (struct kvm_vcpu*) ;
 int * vcpu_pc (struct kvm_vcpu*) ;

__attribute__((used)) static int emulate_cp15(struct kvm_vcpu *vcpu,
   const struct coproc_params *params)
{
 size_t num;
 const struct coproc_reg *table, *r;

 trace_kvm_emulate_cp15_imp(params->Op1, params->Rt1, params->CRn,
       params->CRm, params->Op2, params->is_write);

 table = get_target_table(vcpu->arch.target, &num);


 r = find_reg(params, table, num);
 if (!r)
  r = find_reg(params, cp15_regs, ARRAY_SIZE(cp15_regs));

 if (likely(r)) {

  BUG_ON(!r->access);

  if (likely(r->access(vcpu, params, r))) {

   kvm_skip_instr(vcpu, kvm_vcpu_trap_il_is32bit(vcpu));
  }
 } else {

  kvm_err("Unsupported guest CP15 access at: %08lx [%08lx]\n",
   *vcpu_pc(vcpu), *vcpu_cpsr(vcpu));
  print_cp_instr(params);
  kvm_inject_undefined(vcpu);
 }

 return 1;
}
