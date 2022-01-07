
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sys_reg_params {scalar_t__ regval; int is_write; } ;
struct sys_reg_desc {int Op2; } ;
struct kvm_vcpu {int dummy; } ;


 int vgic_v3_access_apr_reg (struct kvm_vcpu*,struct sys_reg_params*,scalar_t__,scalar_t__) ;
 scalar_t__ vgic_v3_max_apr_idx (struct kvm_vcpu*) ;

__attribute__((used)) static bool access_gic_aprn(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
       const struct sys_reg_desc *r, u8 apr)
{
 u8 idx = r->Op2 & 3;

 if (idx > vgic_v3_max_apr_idx(vcpu))
  goto err;

 vgic_v3_access_apr_reg(vcpu, p, apr, idx);
 return 1;
err:
 if (!p->is_write)
  p->regval = 0;

 return 0;
}
