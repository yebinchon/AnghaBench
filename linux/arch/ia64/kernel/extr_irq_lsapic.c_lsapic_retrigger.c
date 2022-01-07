
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int ia64_resend_irq (int ) ;

__attribute__((used)) static int lsapic_retrigger(struct irq_data *data)
{
 ia64_resend_irq(data->irq);

 return 1;
}
