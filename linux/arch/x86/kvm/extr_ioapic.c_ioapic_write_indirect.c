
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; int remote_irr; int delivery_status; int trig_mode; } ;
union kvm_ioapic_redirect_entry {int bits; TYPE_1__ fields; } ;
typedef int u64 ;
typedef int u32 ;
struct kvm_ioapic {int ioregsel; int id; int irr; int kvm; union kvm_ioapic_redirect_entry* redirtbl; } ;


 int IOAPIC_EDGE_TRIG ;
 int IOAPIC_LEVEL_TRIG ;
 unsigned int IOAPIC_NUM_PINS ;



 int KVM_IRQCHIP_IOAPIC ;
 int ioapic_service (struct kvm_ioapic*,unsigned int,int) ;
 int kvm_fire_mask_notifiers (int ,int ,unsigned int,int) ;
 int kvm_make_scan_ioapic_request (int ) ;

__attribute__((used)) static void ioapic_write_indirect(struct kvm_ioapic *ioapic, u32 val)
{
 unsigned index;
 bool mask_before, mask_after;
 int old_remote_irr, old_delivery_status;
 union kvm_ioapic_redirect_entry *e;

 switch (ioapic->ioregsel) {
 case 128:

  break;

 case 130:
  ioapic->id = (val >> 24) & 0xf;
  break;

 case 129:
  break;

 default:
  index = (ioapic->ioregsel - 0x10) >> 1;

  if (index >= IOAPIC_NUM_PINS)
   return;
  e = &ioapic->redirtbl[index];
  mask_before = e->fields.mask;

  old_remote_irr = e->fields.remote_irr;
  old_delivery_status = e->fields.delivery_status;
  if (ioapic->ioregsel & 1) {
   e->bits &= 0xffffffff;
   e->bits |= (u64) val << 32;
  } else {
   e->bits &= ~0xffffffffULL;
   e->bits |= (u32) val;
  }
  e->fields.remote_irr = old_remote_irr;
  e->fields.delivery_status = old_delivery_status;







  if (e->fields.trig_mode == IOAPIC_EDGE_TRIG)
   e->fields.remote_irr = 0;

  mask_after = e->fields.mask;
  if (mask_before != mask_after)
   kvm_fire_mask_notifiers(ioapic->kvm, KVM_IRQCHIP_IOAPIC, index, mask_after);
  if (e->fields.trig_mode == IOAPIC_LEVEL_TRIG
      && ioapic->irr & (1 << index))
   ioapic_service(ioapic, index, 0);
  kvm_make_scan_ioapic_request(ioapic->kvm);
  break;
 }
}
