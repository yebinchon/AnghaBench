
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int target; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct coproc_reg {int reg; } ;
struct coproc_params {int dummy; } ;


 size_t ARRAY_SIZE (struct coproc_reg const*) ;
 int KVM_REG_ARM_COPROC_MASK ;
 int KVM_REG_ARM_COPROC_SHIFT ;
 struct coproc_reg const* cp15_regs ;
 struct coproc_reg* find_reg (struct coproc_params*,struct coproc_reg const*,size_t) ;
 struct coproc_reg* get_target_table (int ,size_t*) ;
 int index_to_params (int,struct coproc_params*) ;

__attribute__((used)) static const struct coproc_reg *index_to_coproc_reg(struct kvm_vcpu *vcpu,
          u64 id)
{
 size_t num;
 const struct coproc_reg *table, *r;
 struct coproc_params params;


 if ((id & KVM_REG_ARM_COPROC_MASK) >> KVM_REG_ARM_COPROC_SHIFT != 15)
  return ((void*)0);

 if (!index_to_params(id, &params))
  return ((void*)0);

 table = get_target_table(vcpu->arch.target, &num);
 r = find_reg(&params, table, num);
 if (!r)
  r = find_reg(&params, cp15_regs, ARRAY_SIZE(cp15_regs));


 if (r && !r->reg)
  r = ((void*)0);

 return r;
}
