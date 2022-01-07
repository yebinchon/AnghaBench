
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handle_level_irq ;
 int imask_irq_chip ;
 int irq_set_chip_and_handler_name (unsigned int,int *,int ,char*) ;

void make_imask_irq(unsigned int irq)
{
 irq_set_chip_and_handler_name(irq, &imask_irq_chip, handle_level_irq,
          "level");
}
