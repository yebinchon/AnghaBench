
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int regval; scalar_t__ is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int SYS_CTR_EL0 ;
 int read_sanitised_ftr_reg (int ) ;
 int write_to_read_only (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ;

__attribute__((used)) static bool access_ctr(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
         const struct sys_reg_desc *r)
{
 if (p->is_write)
  return write_to_read_only(vcpu, p, r);

 p->regval = read_sanitised_ftr_reg(SYS_CTR_EL0);
 return 1;
}
