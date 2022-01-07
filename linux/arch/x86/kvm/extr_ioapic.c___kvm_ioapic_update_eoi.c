
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int vector; int trig_mode; int mask; scalar_t__ remote_irr; } ;
union kvm_ioapic_redirect_entry {int bits; TYPE_3__ fields; } ;
struct TYPE_5__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {size_t vcpu_id; TYPE_2__ arch; } ;
struct kvm_lapic {int dummy; } ;
struct dest_map {int* vectors; int map; } ;
struct TYPE_4__ {struct dest_map dest_map; } ;
struct kvm_ioapic {int irr; scalar_t__* irq_eoi; int eoi_inject; int lock; int kvm; union kvm_ioapic_redirect_entry* redirtbl; TYPE_1__ rtc_status; } ;


 int APIC_SPIV ;
 int APIC_SPIV_DIRECTED_EOI ;
 int ASSERT (int) ;
 int HZ ;
 int IOAPIC_LEVEL_TRIG ;
 int IOAPIC_NUM_PINS ;
 scalar_t__ IOAPIC_SUCCESSIVE_IRQ_MAX_COUNT ;
 int KVM_IRQCHIP_IOAPIC ;
 int ioapic_service (struct kvm_ioapic*,int,int) ;
 int kvm_lapic_get_reg (struct kvm_lapic*,int ) ;
 int kvm_notify_acked_irq (int ,int ,int) ;
 int rtc_irq_eoi (struct kvm_ioapic*,struct kvm_vcpu*) ;
 int schedule_delayed_work (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (size_t,int ) ;
 int trace_kvm_ioapic_delayed_eoi_inj (int ) ;

__attribute__((used)) static void __kvm_ioapic_update_eoi(struct kvm_vcpu *vcpu,
   struct kvm_ioapic *ioapic, int vector, int trigger_mode)
{
 struct dest_map *dest_map = &ioapic->rtc_status.dest_map;
 struct kvm_lapic *apic = vcpu->arch.apic;
 int i;


 if (test_bit(vcpu->vcpu_id, dest_map->map) &&
     vector == dest_map->vectors[vcpu->vcpu_id])
  rtc_irq_eoi(ioapic, vcpu);

 for (i = 0; i < IOAPIC_NUM_PINS; i++) {
  union kvm_ioapic_redirect_entry *ent = &ioapic->redirtbl[i];

  if (ent->fields.vector != vector)
   continue;
  spin_unlock(&ioapic->lock);
  kvm_notify_acked_irq(ioapic->kvm, KVM_IRQCHIP_IOAPIC, i);
  spin_lock(&ioapic->lock);

  if (trigger_mode != IOAPIC_LEVEL_TRIG ||
      kvm_lapic_get_reg(apic, APIC_SPIV) & APIC_SPIV_DIRECTED_EOI)
   continue;

  ASSERT(ent->fields.trig_mode == IOAPIC_LEVEL_TRIG);
  ent->fields.remote_irr = 0;
  if (!ent->fields.mask && (ioapic->irr & (1 << i))) {
   ++ioapic->irq_eoi[i];
   if (ioapic->irq_eoi[i] == IOAPIC_SUCCESSIVE_IRQ_MAX_COUNT) {
    schedule_delayed_work(&ioapic->eoi_inject, HZ / 100);
    ioapic->irq_eoi[i] = 0;
    trace_kvm_ioapic_delayed_eoi_inj(ent->bits);
   } else {
    ioapic_service(ioapic, i, 0);
   }
  } else {
   ioapic->irq_eoi[i] = 0;
  }
 }
}
