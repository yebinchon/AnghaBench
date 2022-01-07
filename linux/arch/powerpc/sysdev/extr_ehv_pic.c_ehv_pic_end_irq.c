
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int ev_int_eoi (unsigned int) ;
 unsigned int virq_to_hw (int ) ;

void ehv_pic_end_irq(struct irq_data *d)
{
 unsigned int src = virq_to_hw(d->irq);

 ev_int_eoi(src);
}
