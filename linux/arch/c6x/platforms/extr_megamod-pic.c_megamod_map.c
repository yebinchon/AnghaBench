
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megamod_pic {scalar_t__* output_to_irq; } ;
struct irq_domain {struct megamod_pic* host_data; } ;
typedef scalar_t__ irq_hw_number_t ;


 int IRQ_TYPE_NONE ;
 int NR_MUX_OUTPUTS ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct megamod_pic*) ;
 int irq_set_irq_type (unsigned int,int ) ;
 int megamod_chip ;

__attribute__((used)) static int megamod_map(struct irq_domain *h, unsigned int virq,
         irq_hw_number_t hw)
{
 struct megamod_pic *pic = h->host_data;
 int i;


 for (i = 0; i < NR_MUX_OUTPUTS; i++)
  if (pic->output_to_irq[i] == hw)
   return -1;

 irq_set_chip_data(virq, pic);
 irq_set_chip_and_handler(virq, &megamod_chip, handle_level_irq);


 irq_set_irq_type(virq, IRQ_TYPE_NONE);

 return 0;
}
