
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_lapic {int dummy; } ;


 int BUG_ON (int) ;
 int apic_set_eoi (struct kvm_lapic*) ;
 int pv_eoi_clr_pending (struct kvm_vcpu*) ;
 int pv_eoi_enabled (struct kvm_vcpu*) ;
 int pv_eoi_get_pending (struct kvm_vcpu*) ;
 int trace_kvm_pv_eoi (struct kvm_lapic*,int) ;

__attribute__((used)) static void apic_sync_pv_eoi_from_guest(struct kvm_vcpu *vcpu,
     struct kvm_lapic *apic)
{
 bool pending;
 int vector;
 BUG_ON(!pv_eoi_enabled(vcpu));
 pending = pv_eoi_get_pending(vcpu);





 pv_eoi_clr_pending(vcpu);
 if (pending)
  return;
 vector = apic_set_eoi(apic);
 trace_kvm_pv_eoi(apic, vector);
}
