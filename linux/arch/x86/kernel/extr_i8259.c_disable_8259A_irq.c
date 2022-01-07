
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int mask_8259A_irq (int ) ;

__attribute__((used)) static void disable_8259A_irq(struct irq_data *data)
{
 mask_8259A_irq(data->irq);
}
