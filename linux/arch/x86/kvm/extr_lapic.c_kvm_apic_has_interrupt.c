
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;


 int __apic_update_ppr (struct kvm_lapic*,int *) ;
 int apic_has_interrupt_for_ppr (struct kvm_lapic*,int ) ;
 int kvm_apic_hw_enabled (struct kvm_lapic*) ;

int kvm_apic_has_interrupt(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 u32 ppr;

 if (!kvm_apic_hw_enabled(apic))
  return -1;

 __apic_update_ppr(apic, &ppr);
 return apic_has_interrupt_for_ppr(apic, ppr);
}
