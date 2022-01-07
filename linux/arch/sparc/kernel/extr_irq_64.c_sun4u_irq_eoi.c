
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_handler_data {int iclr; } ;
struct irq_data {int dummy; } ;


 int ICLR_IDLE ;
 struct irq_handler_data* irq_data_get_irq_handler_data (struct irq_data*) ;
 scalar_t__ likely (struct irq_handler_data*) ;
 int upa_writeq (int ,int ) ;

__attribute__((used)) static void sun4u_irq_eoi(struct irq_data *data)
{
 struct irq_handler_data *handler_data;

 handler_data = irq_data_get_irq_handler_data(data);
 if (likely(handler_data))
  upa_writeq(ICLR_IDLE, handler_data->iclr);
}
