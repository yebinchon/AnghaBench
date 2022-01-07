
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_alloc_info {int dummy; } ;


 int ENODEV ;
 unsigned int IOAPIC_MAP_CHECK ;
 int find_irq_entry (int,int,int ) ;
 int mp_INT ;
 int mp_find_ioapic (int ) ;
 int mp_find_ioapic_pin (int,int ) ;
 int mp_map_pin_to_irq (int ,int,int,int,unsigned int,struct irq_alloc_info*) ;

int mp_map_gsi_to_irq(u32 gsi, unsigned int flags, struct irq_alloc_info *info)
{
 int ioapic, pin, idx;

 ioapic = mp_find_ioapic(gsi);
 if (ioapic < 0)
  return -ENODEV;

 pin = mp_find_ioapic_pin(ioapic, gsi);
 idx = find_irq_entry(ioapic, pin, mp_INT);
 if ((flags & IOAPIC_MAP_CHECK) && idx < 0)
  return -ENODEV;

 return mp_map_pin_to_irq(gsi, idx, ioapic, pin, flags, info);
}
