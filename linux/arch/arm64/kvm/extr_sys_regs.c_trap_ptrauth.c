
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {int dummy; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int kvm_arm_vcpu_ptrauth_trap (struct kvm_vcpu*) ;

__attribute__((used)) static bool trap_ptrauth(struct kvm_vcpu *vcpu,
    struct sys_reg_params *p,
    const struct sys_reg_desc *rd)
{
 kvm_arm_vcpu_ptrauth_trap(vcpu);
 return 0;
}
