
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct irq_cfg {int dummy; } ;
struct apic_chip_data {struct irq_cfg hw_irq_cfg; } ;


 struct apic_chip_data* apic_chip_data (struct irq_data*) ;

struct irq_cfg *irqd_cfg(struct irq_data *irqd)
{
 struct apic_chip_data *apicd = apic_chip_data(irqd);

 return apicd ? &apicd->hw_irq_cfg : ((void*)0);
}
