
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int ia64_resend_irq (unsigned int) ;
 unsigned int irq_to_vector (int ) ;

__attribute__((used)) static int ia64_msi_retrigger_irq(struct irq_data *data)
{
 unsigned int vector = irq_to_vector(data->irq);
 ia64_resend_irq(vector);

 return 1;
}
