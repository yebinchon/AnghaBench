
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int regval; scalar_t__ is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int dbgauthstatus_el1 ;
 int ignore_write (struct kvm_vcpu*,struct sys_reg_params*) ;
 int read_sysreg (int ) ;

__attribute__((used)) static bool trap_dbgauthstatus_el1(struct kvm_vcpu *vcpu,
       struct sys_reg_params *p,
       const struct sys_reg_desc *r)
{
 if (p->is_write) {
  return ignore_write(vcpu, p);
 } else {
  p->regval = read_sysreg(dbgauthstatus_el1);
  return 1;
 }
}
