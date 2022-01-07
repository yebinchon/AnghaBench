
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_lapic {int vcpu; } ;
struct TYPE_2__ {int vec_bitmap; } ;


 int KVM_REQ_EVENT ;
 int apic_clear_isr (int,struct kvm_lapic*) ;
 int apic_find_highest_isr (struct kvm_lapic*) ;
 int apic_update_ppr (struct kvm_lapic*) ;
 int kvm_hv_synic_send_eoi (int ,int) ;
 int kvm_ioapic_send_eoi (struct kvm_lapic*,int) ;
 int kvm_make_request (int ,int ) ;
 scalar_t__ test_bit (int,int ) ;
 int trace_kvm_eoi (struct kvm_lapic*,int) ;
 TYPE_1__* vcpu_to_synic (int ) ;

__attribute__((used)) static int apic_set_eoi(struct kvm_lapic *apic)
{
 int vector = apic_find_highest_isr(apic);

 trace_kvm_eoi(apic, vector);





 if (vector == -1)
  return vector;

 apic_clear_isr(vector, apic);
 apic_update_ppr(apic);

 if (test_bit(vector, vcpu_to_synic(apic->vcpu)->vec_bitmap))
  kvm_hv_synic_send_eoi(apic->vcpu, vector);

 kvm_ioapic_send_eoi(apic, vector);
 kvm_make_request(KVM_REQ_EVENT, apic->vcpu);
 return vector;
}
