
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int IRQ_LEVEL ;
 int cpm_pic ;
 int handle_fasteoi_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_status_flags (unsigned int,int ) ;
 int pr_debug (char*,unsigned int,int ) ;

__attribute__((used)) static int cpm_pic_host_map(struct irq_domain *h, unsigned int virq,
     irq_hw_number_t hw)
{
 pr_debug("cpm_pic_host_map(%d, 0x%lx)\n", virq, hw);

 irq_set_status_flags(virq, IRQ_LEVEL);
 irq_set_chip_and_handler(virq, &cpm_pic, handle_fasteoi_irq);
 return 0;
}
