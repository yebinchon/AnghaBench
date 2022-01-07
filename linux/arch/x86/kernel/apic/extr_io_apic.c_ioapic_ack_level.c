
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int chip_data; } ;
struct irq_cfg {int vector; } ;


 scalar_t__ APIC_TMR ;
 int ack_APIC_irq () ;
 unsigned long apic_read (scalar_t__) ;
 int atomic_inc (int *) ;
 int eoi_ioapic_pin (int,int ) ;
 int ioapic_irqd_mask (struct irq_data*) ;
 int ioapic_irqd_unmask (struct irq_data*,int) ;
 int irq_complete_move (struct irq_cfg*) ;
 int irq_mis_count ;
 struct irq_cfg* irqd_cfg (struct irq_data*) ;

__attribute__((used)) static void ioapic_ack_level(struct irq_data *irq_data)
{
 struct irq_cfg *cfg = irqd_cfg(irq_data);
 unsigned long v;
 bool masked;
 int i;

 irq_complete_move(cfg);
 masked = ioapic_irqd_mask(irq_data);
 i = cfg->vector;
 v = apic_read(APIC_TMR + ((i & ~0x1f) >> 1));





 ack_APIC_irq();
 if (!(v & (1 << (i & 0x1f)))) {
  atomic_inc(&irq_mis_count);
  eoi_ioapic_pin(cfg->vector, irq_data->chip_data);
 }

 ioapic_irqd_unmask(irq_data, masked);
}
