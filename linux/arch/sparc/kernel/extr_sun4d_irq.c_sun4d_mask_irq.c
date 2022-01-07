
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4d_handler_data {int cpuid; unsigned int real_irq; } ;
struct irq_data {int dummy; } ;


 int cc_get_imsk () ;
 int cc_get_imsk_other (int) ;
 int cc_set_imsk (int) ;
 int cc_set_imsk_other (int,int) ;
 struct sun4d_handler_data* irq_data_get_irq_handler_data (struct irq_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sun4d_imsk_lock ;

__attribute__((used)) static void sun4d_mask_irq(struct irq_data *data)
{
 struct sun4d_handler_data *handler_data = irq_data_get_irq_handler_data(data);
 unsigned int real_irq;




 real_irq = handler_data->real_irq;





 cc_set_imsk(cc_get_imsk() | (1 << real_irq));

}
