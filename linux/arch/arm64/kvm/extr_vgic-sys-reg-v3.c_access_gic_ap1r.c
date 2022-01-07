
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int dummy; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int access_gic_aprn (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*,int) ;

__attribute__((used)) static bool access_gic_ap1r(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
       const struct sys_reg_desc *r)
{
 return access_gic_aprn(vcpu, p, r, 1);
}
