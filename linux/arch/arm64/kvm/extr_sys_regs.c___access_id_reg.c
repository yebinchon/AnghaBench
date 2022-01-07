
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int regval; scalar_t__ is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int read_id_reg (struct kvm_vcpu*,struct sys_reg_desc const*,int) ;
 int write_to_read_only (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ;

__attribute__((used)) static bool __access_id_reg(struct kvm_vcpu *vcpu,
       struct sys_reg_params *p,
       const struct sys_reg_desc *r,
       bool raz)
{
 if (p->is_write)
  return write_to_read_only(vcpu, p, r);

 p->regval = read_id_reg(vcpu, r, raz);
 return 1;
}
