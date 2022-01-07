
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ trigger; scalar_t__ polarity; } ;
struct mp_chip_data {int count; scalar_t__ trigger; scalar_t__ polarity; TYPE_1__ entry; } ;
struct irq_alloc_info {scalar_t__ ioapic_trigger; scalar_t__ ioapic_polarity; } ;


 struct mp_chip_data* irq_get_chip_data (int) ;
 int mp_register_handler (int,scalar_t__) ;
 int nr_legacy_irqs () ;

__attribute__((used)) static bool mp_check_pin_attr(int irq, struct irq_alloc_info *info)
{
 struct mp_chip_data *data = irq_get_chip_data(irq);






 if (irq < nr_legacy_irqs() && data->count == 1) {
  if (info->ioapic_trigger != data->trigger)
   mp_register_handler(irq, info->ioapic_trigger);
  data->entry.trigger = data->trigger = info->ioapic_trigger;
  data->entry.polarity = data->polarity = info->ioapic_polarity;
 }

 return data->trigger == info->ioapic_trigger &&
        data->polarity == info->ioapic_polarity;
}
