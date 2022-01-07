
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct ehv_pic* host_data; } ;
struct irq_chip {int dummy; } ;
struct ehv_pic {struct irq_chip hc_irq; } ;
typedef size_t irq_hw_number_t ;


 int IRQ_TYPE_MPIC_DIRECT ;
 int IRQ_TYPE_NONE ;
 struct irq_chip ehv_pic_direct_eoi_irq_chip ;
 int handle_fasteoi_irq ;
 int* hwirq_intspec ;
 int irq_set_chip_and_handler (unsigned int,struct irq_chip*,int ) ;
 int irq_set_chip_data (unsigned int,struct irq_chip*) ;
 int irq_set_irq_type (unsigned int,int ) ;
 scalar_t__ mpic_percpu_base_vaddr ;

__attribute__((used)) static int ehv_pic_host_map(struct irq_domain *h, unsigned int virq,
    irq_hw_number_t hw)
{
 struct ehv_pic *ehv_pic = h->host_data;
 struct irq_chip *chip;


 chip = &ehv_pic->hc_irq;

 if (mpic_percpu_base_vaddr)
  if (hwirq_intspec[hw] & IRQ_TYPE_MPIC_DIRECT)
   chip = &ehv_pic_direct_eoi_irq_chip;

 irq_set_chip_data(virq, chip);







 irq_set_chip_and_handler(virq, chip, handle_fasteoi_irq);


 irq_set_irq_type(virq, IRQ_TYPE_NONE);

 return 0;
}
