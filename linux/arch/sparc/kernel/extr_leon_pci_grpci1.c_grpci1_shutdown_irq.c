
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int grpci1_mask_irq (struct irq_data*) ;

__attribute__((used)) static void grpci1_shutdown_irq(struct irq_data *data)
{
 grpci1_mask_irq(data);
}
