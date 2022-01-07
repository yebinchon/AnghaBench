
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IO_APIC_route_entry {int dummy; } ;


 int __ioapic_write_entry (int,int,struct IO_APIC_route_entry) ;
 int ioapic_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ioapic_write_entry(int apic, int pin, struct IO_APIC_route_entry e)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&ioapic_lock, flags);
 __ioapic_write_entry(apic, pin, e);
 raw_spin_unlock_irqrestore(&ioapic_lock, flags);
}
