
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; } ;
union IO_APIC_reg_01 {TYPE_1__ bits; int raw; } ;


 int io_apic_read (int,int) ;
 int ioapic_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int io_apic_get_version(int ioapic)
{
 union IO_APIC_reg_01 reg_01;
 unsigned long flags;

 raw_spin_lock_irqsave(&ioapic_lock, flags);
 reg_01.raw = io_apic_read(ioapic, 1);
 raw_spin_unlock_irqrestore(&ioapic_lock, flags);

 return reg_01.bits.version;
}
