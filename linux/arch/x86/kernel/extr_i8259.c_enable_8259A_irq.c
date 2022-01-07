
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int unmask_8259A_irq (int ) ;

__attribute__((used)) static void enable_8259A_irq(struct irq_data *data)
{
 unmask_8259A_irq(data->irq);
}
