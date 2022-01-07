
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int ack_APIC_irq () ;

__attribute__((used)) static void ack_lapic_irq(struct irq_data *data)
{
 ack_APIC_irq();
}
