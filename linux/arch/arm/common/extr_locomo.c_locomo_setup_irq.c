
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo {int irq_base; int irq; } ;


 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 int IRQ_TYPE_EDGE_FALLING ;
 int handle_level_irq ;
 int irq_clear_status_flags (int,int) ;
 int irq_set_chained_handler_and_data (int ,int ,struct locomo*) ;
 int irq_set_chip_and_handler (int,int *,int ) ;
 int irq_set_chip_data (int,struct locomo*) ;
 int irq_set_irq_type (int ,int ) ;
 int locomo_chip ;
 int locomo_handler ;

__attribute__((used)) static void locomo_setup_irq(struct locomo *lchip)
{
 int irq = lchip->irq_base;




 irq_set_irq_type(lchip->irq, IRQ_TYPE_EDGE_FALLING);
 irq_set_chained_handler_and_data(lchip->irq, locomo_handler, lchip);


 for ( ; irq <= lchip->irq_base + 3; irq++) {
  irq_set_chip_and_handler(irq, &locomo_chip, handle_level_irq);
  irq_set_chip_data(irq, lchip);
  irq_clear_status_flags(irq, IRQ_NOREQUEST | IRQ_NOPROBE);
 }
}
