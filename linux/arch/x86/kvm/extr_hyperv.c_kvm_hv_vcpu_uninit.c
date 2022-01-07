
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu_hv {int * stimer; } ;
struct kvm_vcpu {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int stimer_cleanup (int *) ;
 struct kvm_vcpu_hv* vcpu_to_hv_vcpu (struct kvm_vcpu*) ;

void kvm_hv_vcpu_uninit(struct kvm_vcpu *vcpu)
{
 struct kvm_vcpu_hv *hv_vcpu = vcpu_to_hv_vcpu(vcpu);
 int i;

 for (i = 0; i < ARRAY_SIZE(hv_vcpu->stimer); i++)
  stimer_cleanup(&hv_vcpu->stimer[i]);
}
