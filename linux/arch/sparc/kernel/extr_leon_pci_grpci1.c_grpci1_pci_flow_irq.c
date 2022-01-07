
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_3__ irq_data; } ;
struct grpci1_priv {int * irq_map; int irq_err; TYPE_2__* regs; } ;
struct TYPE_5__ {int irq; } ;
struct TYPE_4__ {int (* irq_eoi ) (TYPE_3__*) ;} ;


 unsigned int IRQ_ALL_ERRORS ;
 unsigned int IRQ_INTX ;
 unsigned int IRQ_MASK_BIT ;
 unsigned int REGLOAD (int ) ;
 int generic_handle_irq (int ) ;
 struct grpci1_priv* grpci1priv ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void grpci1_pci_flow_irq(struct irq_desc *desc)
{
 struct grpci1_priv *priv = grpci1priv;
 int i, ack = 0;
 unsigned int irqreg;

 irqreg = REGLOAD(priv->regs->irq);
 irqreg = (irqreg >> IRQ_MASK_BIT) & irqreg;


 if (irqreg & IRQ_ALL_ERRORS) {
  generic_handle_irq(priv->irq_err);
  ack = 1;
 }


 if (irqreg & IRQ_INTX) {

  for (i = 0; i < 4; i++) {
   if (irqreg & (1 << i))
    generic_handle_irq(priv->irq_map[i]);
  }
  ack = 1;
 }






 if (ack)
  desc->irq_data.chip->irq_eoi(&desc->irq_data);
}
