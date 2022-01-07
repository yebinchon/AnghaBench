
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_pmu_reset (struct kvm_vcpu*) ;

void kvm_pmu_destroy(struct kvm_vcpu *vcpu)
{
 kvm_pmu_reset(vcpu);
}
