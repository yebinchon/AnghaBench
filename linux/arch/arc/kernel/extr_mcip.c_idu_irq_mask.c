
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int idu_irq_mask_raw (int ) ;

__attribute__((used)) static void idu_irq_mask(struct irq_data *data)
{
 idu_irq_mask_raw(data->hwirq);
}
