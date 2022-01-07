
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int APIC_LVT0 ;
 unsigned long APIC_LVT_MASKED ;
 unsigned long apic_read (int ) ;
 int apic_write (int ,unsigned long) ;

__attribute__((used)) static void mask_lapic_irq(struct irq_data *data)
{
 unsigned long v;

 v = apic_read(APIC_LVT0);
 apic_write(APIC_LVT0, v | APIC_LVT_MASKED);
}
