
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int ESR_ELx_ISS_MASK ;
 int HCR_VSE ;
 int * vcpu_hcr (struct kvm_vcpu*) ;
 int vcpu_set_vsesr (struct kvm_vcpu*,int) ;

void kvm_set_sei_esr(struct kvm_vcpu *vcpu, u64 esr)
{
 vcpu_set_vsesr(vcpu, esr & ESR_ELx_ISS_MASK);
 *vcpu_hcr(vcpu) |= HCR_VSE;
}
