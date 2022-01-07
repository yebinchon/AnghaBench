
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_lapic {TYPE_2__* vcpu; scalar_t__ regs; } ;
struct TYPE_4__ {int pending_ioapic_eoi; } ;
struct TYPE_5__ {TYPE_1__ arch; int kvm; } ;


 scalar_t__ APIC_TMR ;
 int IOAPIC_EDGE_TRIG ;
 int IOAPIC_LEVEL_TRIG ;
 int KVM_REQ_IOAPIC_EOI_EXIT ;
 scalar_t__ apic_test_vector (int,scalar_t__) ;
 scalar_t__ irqchip_split (int ) ;
 int kvm_ioapic_handles_vector (struct kvm_lapic*,int) ;
 int kvm_ioapic_update_eoi (TYPE_2__*,int,int) ;
 int kvm_make_request (int ,TYPE_2__*) ;

__attribute__((used)) static void kvm_ioapic_send_eoi(struct kvm_lapic *apic, int vector)
{
 int trigger_mode;


 if (!kvm_ioapic_handles_vector(apic, vector))
  return;


 if (irqchip_split(apic->vcpu->kvm)) {
  apic->vcpu->arch.pending_ioapic_eoi = vector;
  kvm_make_request(KVM_REQ_IOAPIC_EOI_EXIT, apic->vcpu);
  return;
 }

 if (apic_test_vector(vector, apic->regs + APIC_TMR))
  trigger_mode = IOAPIC_LEVEL_TRIG;
 else
  trigger_mode = IOAPIC_EDGE_TRIG;

 kvm_ioapic_update_eoi(apic->vcpu, vector, trigger_mode);
}
