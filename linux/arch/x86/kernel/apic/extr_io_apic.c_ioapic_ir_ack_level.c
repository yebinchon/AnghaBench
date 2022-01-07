
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vector; } ;
struct mp_chip_data {TYPE_1__ entry; } ;
struct irq_data {struct mp_chip_data* chip_data; } ;


 int apic_ack_irq (struct irq_data*) ;
 int eoi_ioapic_pin (int ,struct mp_chip_data*) ;

__attribute__((used)) static void ioapic_ir_ack_level(struct irq_data *irq_data)
{
 struct mp_chip_data *data = irq_data->chip_data;







 apic_ack_irq(irq_data);
 eoi_ioapic_pin(data->entry.vector, data);
}
