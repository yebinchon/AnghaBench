
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_alloc_info {int ioapic_pin; int ioapic_valid; int ioapic_trigger; int ioapic_polarity; int ioapic_node; int ioapic_id; int type; } ;


 int IOAPIC_LEVEL ;
 int IOAPIC_POL_LOW ;
 int NUMA_NO_NODE ;
 int X86_IRQ_ALLOC_TYPE_IOAPIC ;
 scalar_t__ acpi_get_override_irq (int ,int*,int*) ;
 int copy_irq_alloc_info (struct irq_alloc_info*,struct irq_alloc_info*) ;
 int mpc_ioapic_id (int) ;

__attribute__((used)) static void ioapic_copy_alloc_attr(struct irq_alloc_info *dst,
       struct irq_alloc_info *src,
       u32 gsi, int ioapic_idx, int pin)
{
 int trigger, polarity;

 copy_irq_alloc_info(dst, src);
 dst->type = X86_IRQ_ALLOC_TYPE_IOAPIC;
 dst->ioapic_id = mpc_ioapic_id(ioapic_idx);
 dst->ioapic_pin = pin;
 dst->ioapic_valid = 1;
 if (src && src->ioapic_valid) {
  dst->ioapic_node = src->ioapic_node;
  dst->ioapic_trigger = src->ioapic_trigger;
  dst->ioapic_polarity = src->ioapic_polarity;
 } else {
  dst->ioapic_node = NUMA_NO_NODE;
  if (acpi_get_override_irq(gsi, &trigger, &polarity) >= 0) {
   dst->ioapic_trigger = trigger;
   dst->ioapic_polarity = polarity;
  } else {




   dst->ioapic_trigger = IOAPIC_LEVEL;
   dst->ioapic_polarity = IOAPIC_POL_LOW;
  }
 }
}
