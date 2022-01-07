
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_lapic {int highest_isr_cache; int vcpu; scalar_t__ irr_pending; } ;


 scalar_t__ kvm_ioapic_handles_vector (struct kvm_lapic*,int) ;
 int pv_eoi_enabled (struct kvm_vcpu*) ;
 int pv_eoi_set_pending (int ) ;

__attribute__((used)) static void apic_sync_pv_eoi_to_guest(struct kvm_vcpu *vcpu,
     struct kvm_lapic *apic)
{
 if (!pv_eoi_enabled(vcpu) ||

     apic->irr_pending ||

     apic->highest_isr_cache == -1 ||

     kvm_ioapic_handles_vector(apic, apic->highest_isr_cache)) {




  return;
 }

 pv_eoi_set_pending(apic->vcpu);
}
