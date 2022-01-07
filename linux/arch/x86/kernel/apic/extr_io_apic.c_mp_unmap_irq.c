
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chip_data {scalar_t__ count; scalar_t__ isa_irq; } ;
struct irq_data {struct mp_chip_data* chip_data; int domain; } ;


 int ioapic_mutex ;
 int irq_domain_free_irqs (int,int) ;
 struct irq_data* irq_get_irq_data (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mp_unmap_irq(int irq)
{
 struct irq_data *irq_data = irq_get_irq_data(irq);
 struct mp_chip_data *data;

 if (!irq_data || !irq_data->domain)
  return;

 data = irq_data->chip_data;
 if (!data || data->isa_irq)
  return;

 mutex_lock(&ioapic_mutex);
 if (--data->count == 0)
  irq_domain_free_irqs(irq, 1);
 mutex_unlock(&ioapic_mutex);
}
