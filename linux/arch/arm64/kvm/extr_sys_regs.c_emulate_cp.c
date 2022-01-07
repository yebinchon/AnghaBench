
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int dummy; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 struct sys_reg_desc* find_reg (struct sys_reg_params*,struct sys_reg_desc const*,size_t) ;
 int perform_access (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ;

__attribute__((used)) static int emulate_cp(struct kvm_vcpu *vcpu,
        struct sys_reg_params *params,
        const struct sys_reg_desc *table,
        size_t num)
{
 const struct sys_reg_desc *r;

 if (!table)
  return -1;

 r = find_reg(params, table, num);

 if (r) {
  perform_access(vcpu, params, r);
  return 0;
 }


 return -1;
}
