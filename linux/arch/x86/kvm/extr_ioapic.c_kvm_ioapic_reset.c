
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_ioapic {int irq_eoi; scalar_t__ id; scalar_t__ irr_delivered; scalar_t__ irr; scalar_t__ ioregsel; int base_address; TYPE_2__* redirtbl; int eoi_inject; } ;
struct TYPE_3__ {int mask; } ;
struct TYPE_4__ {TYPE_1__ fields; } ;


 int IOAPIC_DEFAULT_BASE_ADDRESS ;
 int IOAPIC_NUM_PINS ;
 int cancel_delayed_work_sync (int *) ;
 int memset (int ,int,int) ;
 int rtc_irq_eoi_tracking_reset (struct kvm_ioapic*) ;

__attribute__((used)) static void kvm_ioapic_reset(struct kvm_ioapic *ioapic)
{
 int i;

 cancel_delayed_work_sync(&ioapic->eoi_inject);
 for (i = 0; i < IOAPIC_NUM_PINS; i++)
  ioapic->redirtbl[i].fields.mask = 1;
 ioapic->base_address = IOAPIC_DEFAULT_BASE_ADDRESS;
 ioapic->ioregsel = 0;
 ioapic->irr = 0;
 ioapic->irr_delivered = 0;
 ioapic->id = 0;
 memset(ioapic->irq_eoi, 0x00, sizeof(ioapic->irq_eoi));
 rtc_irq_eoi_tracking_reset(ioapic);
}
