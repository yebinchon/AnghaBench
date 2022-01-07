
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xive_irq_data {int dummy; } ;


 struct xive_irq_data* irq_get_handler_data (unsigned int) ;
 int irq_set_handler_data (unsigned int,int *) ;
 int kfree (struct xive_irq_data*) ;
 int xive_cleanup_irq_data (struct xive_irq_data*) ;

__attribute__((used)) static void xive_irq_free_data(unsigned int virq)
{
 struct xive_irq_data *xd = irq_get_handler_data(virq);

 if (!xd)
  return;
 irq_set_handler_data(virq, ((void*)0));
 xive_cleanup_irq_data(xd);
 kfree(xd);
}
