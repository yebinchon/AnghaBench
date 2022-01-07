
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int ESR_ELx_ISV ;
 int kvm_set_sei_esr (struct kvm_vcpu*,int ) ;

void kvm_inject_vabt(struct kvm_vcpu *vcpu)
{
 kvm_set_sei_esr(vcpu, ESR_ELx_ISV);
}
