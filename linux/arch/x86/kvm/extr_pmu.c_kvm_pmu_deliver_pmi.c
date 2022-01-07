
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int APIC_LVTPC ;
 int kvm_apic_local_deliver (int ,int ) ;
 scalar_t__ lapic_in_kernel (struct kvm_vcpu*) ;

void kvm_pmu_deliver_pmi(struct kvm_vcpu *vcpu)
{
 if (lapic_in_kernel(vcpu))
  kvm_apic_local_deliver(vcpu->arch.apic, APIC_LVTPC);
}
