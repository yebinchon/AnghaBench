
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sys_reg_params {int dummy; } ;
struct sys_reg_desc {scalar_t__ get_user; scalar_t__ reg; } ;
struct TYPE_2__ {int target; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int ARRAY_SIZE (int ) ;
 int KVM_REG_ARM64_SYSREG ;
 int KVM_REG_ARM_COPROC_MASK ;
 struct sys_reg_desc* find_reg (struct sys_reg_params*,int ,int ) ;
 struct sys_reg_desc* find_reg_by_id (int,struct sys_reg_params*,struct sys_reg_desc const*,size_t) ;
 struct sys_reg_desc* get_target_table (int ,int,size_t*) ;
 int sys_reg_descs ;

__attribute__((used)) static const struct sys_reg_desc *index_to_sys_reg_desc(struct kvm_vcpu *vcpu,
          u64 id)
{
 size_t num;
 const struct sys_reg_desc *table, *r;
 struct sys_reg_params params;


 if ((id & KVM_REG_ARM_COPROC_MASK) != KVM_REG_ARM64_SYSREG)
  return ((void*)0);

 table = get_target_table(vcpu->arch.target, 1, &num);
 r = find_reg_by_id(id, &params, table, num);
 if (!r)
  r = find_reg(&params, sys_reg_descs, ARRAY_SIZE(sys_reg_descs));


 if (r && !(r->reg || r->get_user))
  r = ((void*)0);

 return r;
}
