
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int irq_unlink (int ) ;
 int sun4m_mask_irq (struct irq_data*) ;

__attribute__((used)) static void sun4m_shutdown_irq(struct irq_data *data)
{
 sun4m_mask_irq(data);
 irq_unlink(data->irq);
}
