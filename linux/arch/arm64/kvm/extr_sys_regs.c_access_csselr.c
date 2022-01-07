
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int regval; scalar_t__ is_write; } ;
struct sys_reg_desc {int reg; } ;
struct kvm_vcpu {int dummy; } ;


 int vcpu_read_sys_reg (struct kvm_vcpu*,int ) ;
 int vcpu_write_sys_reg (struct kvm_vcpu*,int ,int ) ;

__attribute__((used)) static bool access_csselr(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
     const struct sys_reg_desc *r)
{
 if (p->is_write)
  vcpu_write_sys_reg(vcpu, p->regval, r->reg);
 else
  p->regval = vcpu_read_sys_reg(vcpu, r->reg);
 return 1;
}
