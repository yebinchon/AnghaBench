
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; struct bridge_irq_chip_data* chip_data; } ;
struct bridge_irq_chip_data {int bc; } ;


 int b_int_enable ;
 int b_wid_tflush ;
 int bridge_clr (int ,int ,int) ;
 int bridge_read (int ,int ) ;

__attribute__((used)) static void bridge_domain_deactivate(struct irq_domain *domain,
         struct irq_data *irqd)
{
 struct bridge_irq_chip_data *data = irqd->chip_data;

 bridge_clr(data->bc, b_int_enable, (1 << irqd->hwirq));
 bridge_read(data->bc, b_wid_tflush);
}
