
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ trig_mode; int vector; int dest_mode; int dest_id; } ;
union kvm_ioapic_redirect_entry {TYPE_4__ fields; } ;
typedef int ulong ;
struct kvm_vcpu {size_t vcpu_id; TYPE_2__* kvm; } ;
struct dest_map {int * vectors; int map; } ;
struct TYPE_7__ {struct dest_map dest_map; } ;
struct kvm_ioapic {int lock; int kvm; union kvm_ioapic_redirect_entry* redirtbl; TYPE_3__ rtc_status; } ;
struct TYPE_5__ {struct kvm_ioapic* vioapic; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;


 scalar_t__ IOAPIC_LEVEL_TRIG ;
 int IOAPIC_NUM_PINS ;
 int KVM_IRQCHIP_IOAPIC ;
 int RTC_GSI ;
 int __set_bit (int ,int *) ;
 scalar_t__ kvm_apic_match_dest (struct kvm_vcpu*,int *,int ,int ,int ) ;
 scalar_t__ kvm_apic_pending_eoi (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_irq_has_notifier (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (size_t,int ) ;

void kvm_ioapic_scan_entry(struct kvm_vcpu *vcpu, ulong *ioapic_handled_vectors)
{
 struct kvm_ioapic *ioapic = vcpu->kvm->arch.vioapic;
 struct dest_map *dest_map = &ioapic->rtc_status.dest_map;
 union kvm_ioapic_redirect_entry *e;
 int index;

 spin_lock(&ioapic->lock);


 if (test_bit(vcpu->vcpu_id, dest_map->map))
  __set_bit(dest_map->vectors[vcpu->vcpu_id],
     ioapic_handled_vectors);

 for (index = 0; index < IOAPIC_NUM_PINS; index++) {
  e = &ioapic->redirtbl[index];
  if (e->fields.trig_mode == IOAPIC_LEVEL_TRIG ||
      kvm_irq_has_notifier(ioapic->kvm, KVM_IRQCHIP_IOAPIC, index) ||
      index == RTC_GSI) {
   if (kvm_apic_match_dest(vcpu, ((void*)0), 0,
                e->fields.dest_id, e->fields.dest_mode) ||
       kvm_apic_pending_eoi(vcpu, e->fields.vector))
    __set_bit(e->fields.vector,
       ioapic_handled_vectors);
  }
 }
 spin_unlock(&ioapic->lock);
}
