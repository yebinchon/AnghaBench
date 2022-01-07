
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 unsigned int REG_HIDDEN_GUEST ;
 unsigned int REG_HIDDEN_USER ;
 scalar_t__ vcpu_has_sve (struct kvm_vcpu const*) ;

__attribute__((used)) static unsigned int sve_visibility(const struct kvm_vcpu *vcpu,
       const struct sys_reg_desc *rd)
{
 if (vcpu_has_sve(vcpu))
  return 0;

 return REG_HIDDEN_USER | REG_HIDDEN_GUEST;
}
