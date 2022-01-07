
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {struct apic_chip_data* chip_data; struct irq_data* parent_data; } ;
struct apic_chip_data {int dummy; } ;



__attribute__((used)) static struct apic_chip_data *apic_chip_data(struct irq_data *irqd)
{
 if (!irqd)
  return ((void*)0);

 while (irqd->parent_data)
  irqd = irqd->parent_data;

 return irqd->chip_data;
}
