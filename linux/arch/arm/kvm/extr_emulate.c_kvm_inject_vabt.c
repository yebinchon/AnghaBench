
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int HCR_VA ;
 int * vcpu_hcr (struct kvm_vcpu*) ;

void kvm_inject_vabt(struct kvm_vcpu *vcpu)
{
 *vcpu_hcr(vcpu) |= HCR_VA;
}
