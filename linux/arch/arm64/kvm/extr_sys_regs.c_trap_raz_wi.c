
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {scalar_t__ is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int ignore_write (struct kvm_vcpu*,struct sys_reg_params*) ;
 int read_zero (struct kvm_vcpu*,struct sys_reg_params*) ;

__attribute__((used)) static bool trap_raz_wi(struct kvm_vcpu *vcpu,
   struct sys_reg_params *p,
   const struct sys_reg_desc *r)
{
 if (p->is_write)
  return ignore_write(vcpu, p);
 else
  return read_zero(vcpu, p);
}
