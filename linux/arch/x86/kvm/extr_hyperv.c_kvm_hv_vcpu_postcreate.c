
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu_hv {int vp_index; } ;
struct kvm_vcpu {int dummy; } ;


 int kvm_vcpu_get_idx (struct kvm_vcpu*) ;
 struct kvm_vcpu_hv* vcpu_to_hv_vcpu (struct kvm_vcpu*) ;

void kvm_hv_vcpu_postcreate(struct kvm_vcpu *vcpu)
{
 struct kvm_vcpu_hv *hv_vcpu = vcpu_to_hv_vcpu(vcpu);

 hv_vcpu->vp_index = kvm_vcpu_get_idx(vcpu);
}
