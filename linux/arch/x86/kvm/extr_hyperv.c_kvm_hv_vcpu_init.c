
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu_hv {int * stimer; int stimer_pending_bitmap; int synic; } ;
struct kvm_vcpu {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int HV_SYNIC_STIMER_COUNT ;
 int bitmap_zero (int ,int ) ;
 int stimer_init (int *,int) ;
 int synic_init (int *) ;
 struct kvm_vcpu_hv* vcpu_to_hv_vcpu (struct kvm_vcpu*) ;

void kvm_hv_vcpu_init(struct kvm_vcpu *vcpu)
{
 struct kvm_vcpu_hv *hv_vcpu = vcpu_to_hv_vcpu(vcpu);
 int i;

 synic_init(&hv_vcpu->synic);

 bitmap_zero(hv_vcpu->stimer_pending_bitmap, HV_SYNIC_STIMER_COUNT);
 for (i = 0; i < ARRAY_SIZE(hv_vcpu->stimer); i++)
  stimer_init(&hv_vcpu->stimer[i], i);
}
