
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct locomo {unsigned int irq_base; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_3__ {int (* irq_ack ) (TYPE_2__*) ;} ;


 scalar_t__ LOCOMO_ICR ;
 int generic_handle_irq (unsigned int) ;
 struct locomo* irq_desc_get_handler_data (struct irq_desc*) ;
 int locomo_readl (scalar_t__) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void locomo_handler(struct irq_desc *desc)
{
 struct locomo *lchip = irq_desc_get_handler_data(desc);
 int req, i;


 desc->irq_data.chip->irq_ack(&desc->irq_data);


 req = locomo_readl(lchip->base + LOCOMO_ICR) & 0x0f00;

 if (req) {
  unsigned int irq;


  irq = lchip->irq_base;
  for (i = 0; i <= 3; i++, irq++) {
   if (req & (0x0100 << i)) {
    generic_handle_irq(irq);
   }

  }
 }
}
