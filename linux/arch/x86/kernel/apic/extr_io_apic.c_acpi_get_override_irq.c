
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int find_irq_entry (int,int,int ) ;
 int irq_polarity (int) ;
 int irq_trigger (int) ;
 int mp_INT ;
 int mp_find_ioapic (int ) ;
 int mp_find_ioapic_pin (int,int ) ;
 scalar_t__ skip_ioapic_setup ;

int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity)
{
 int ioapic, pin, idx;

 if (skip_ioapic_setup)
  return -1;

 ioapic = mp_find_ioapic(gsi);
 if (ioapic < 0)
  return -1;

 pin = mp_find_ioapic_pin(ioapic, gsi);
 if (pin < 0)
  return -1;

 idx = find_irq_entry(ioapic, pin, mp_INT);
 if (idx < 0)
  return -1;

 *trigger = irq_trigger(idx);
 *polarity = irq_polarity(idx);
 return 0;
}
