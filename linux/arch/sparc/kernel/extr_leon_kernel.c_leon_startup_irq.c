
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int irq_link (int ) ;
 int leon_unmask_irq (struct irq_data*) ;

__attribute__((used)) static unsigned int leon_startup_irq(struct irq_data *data)
{
 irq_link(data->irq);
 leon_unmask_irq(data);
 return 0;
}
