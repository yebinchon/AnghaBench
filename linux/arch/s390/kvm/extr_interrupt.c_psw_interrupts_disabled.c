
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ psw_extint_disabled (struct kvm_vcpu*) ;
 scalar_t__ psw_ioint_disabled (struct kvm_vcpu*) ;
 scalar_t__ psw_mchk_disabled (struct kvm_vcpu*) ;

__attribute__((used)) static int psw_interrupts_disabled(struct kvm_vcpu *vcpu)
{
 return psw_extint_disabled(vcpu) &&
        psw_ioint_disabled(vcpu) &&
        psw_mchk_disabled(vcpu);
}
