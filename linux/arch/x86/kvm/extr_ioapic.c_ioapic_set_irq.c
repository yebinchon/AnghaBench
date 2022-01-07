
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ trig_mode; } ;
union kvm_ioapic_redirect_entry {int bits; TYPE_1__ fields; } ;
typedef int u32 ;
struct kvm_ioapic {int irr; int irr_delivered; union kvm_ioapic_redirect_entry* redirtbl; } ;


 scalar_t__ IOAPIC_EDGE_TRIG ;
 unsigned int RTC_GSI ;
 int ioapic_service (struct kvm_ioapic*,unsigned int,int) ;
 scalar_t__ rtc_irq_check_coalesced (struct kvm_ioapic*) ;
 int trace_kvm_ioapic_set_irq (int ,unsigned int,int) ;

__attribute__((used)) static int ioapic_set_irq(struct kvm_ioapic *ioapic, unsigned int irq,
  int irq_level, bool line_status)
{
 union kvm_ioapic_redirect_entry entry;
 u32 mask = 1 << irq;
 u32 old_irr;
 int edge, ret;

 entry = ioapic->redirtbl[irq];
 edge = (entry.fields.trig_mode == IOAPIC_EDGE_TRIG);

 if (!irq_level) {
  ioapic->irr &= ~mask;
  ret = 1;
  goto out;
 }
 if (irq == RTC_GSI && line_status &&
  rtc_irq_check_coalesced(ioapic)) {
  ret = 0;
  goto out;
 }

 old_irr = ioapic->irr;
 ioapic->irr |= mask;
 if (edge) {
  ioapic->irr_delivered &= ~mask;
  if (old_irr == ioapic->irr) {
   ret = 0;
   goto out;
  }
 }

 ret = ioapic_service(ioapic, irq, line_status);

out:
 trace_kvm_ioapic_set_irq(entry.bits, irq, ret == 0);
 return ret;
}
