
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_desc {int (* visibility ) (struct kvm_vcpu const*,struct sys_reg_desc const*) ;} ;
struct kvm_vcpu {int dummy; } ;


 int REG_HIDDEN_GUEST ;
 scalar_t__ likely (int) ;
 int stub1 (struct kvm_vcpu const*,struct sys_reg_desc const*) ;

__attribute__((used)) static inline bool sysreg_hidden_from_guest(const struct kvm_vcpu *vcpu,
         const struct sys_reg_desc *r)
{
 if (likely(!r->visibility))
  return 0;

 return r->visibility(vcpu, r) & REG_HIDDEN_GUEST;
}
