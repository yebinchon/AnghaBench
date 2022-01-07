
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IO_APIC_route_entry {int dummy; } ;
union entry_union {struct IO_APIC_route_entry entry; } ;


 struct IO_APIC_route_entry __ioapic_read_entry (int,int) ;
 int ioapic_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct IO_APIC_route_entry ioapic_read_entry(int apic, int pin)
{
 union entry_union eu;
 unsigned long flags;

 raw_spin_lock_irqsave(&ioapic_lock, flags);
 eu.entry = __ioapic_read_entry(apic, pin);
 raw_spin_unlock_irqrestore(&ioapic_lock, flags);

 return eu.entry;
}
