
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int regval; scalar_t__ is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int guest_id_aa64zfr0_el1 (struct kvm_vcpu*) ;
 int write_to_read_only (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ;

__attribute__((used)) static bool access_id_aa64zfr0_el1(struct kvm_vcpu *vcpu,
       struct sys_reg_params *p,
       const struct sys_reg_desc *rd)
{
 if (p->is_write)
  return write_to_read_only(vcpu, p, rd);

 p->regval = guest_id_aa64zfr0_el1(vcpu);
 return 1;
}
