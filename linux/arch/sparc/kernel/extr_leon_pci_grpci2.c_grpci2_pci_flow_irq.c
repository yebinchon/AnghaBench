
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* chip; } ;
struct irq_desc {TYPE_3__ irq_data; } ;
struct grpci2_priv {scalar_t__ irq_mode; int virq_dma; int * irq_map; int virq_err; TYPE_1__* regs; } ;
struct TYPE_5__ {int (* irq_eoi ) (TYPE_3__*) ;} ;
struct TYPE_4__ {int sts_cap; int ctrl; } ;


 unsigned int CTRL_HOSTINT ;
 unsigned int REGLOAD (int ) ;
 unsigned int STS_ERR_IRQ ;
 unsigned int STS_IDMA ;
 unsigned int STS_IDMAERR ;
 unsigned int STS_INTSTS_BIT ;
 int generic_handle_irq (int ) ;
 struct grpci2_priv* grpci2priv ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void grpci2_pci_flow_irq(struct irq_desc *desc)
{
 struct grpci2_priv *priv = grpci2priv;
 int i, ack = 0;
 unsigned int ctrl, sts_cap, pci_ints;

 ctrl = REGLOAD(priv->regs->ctrl);
 sts_cap = REGLOAD(priv->regs->sts_cap);


 if (sts_cap & STS_ERR_IRQ) {
  generic_handle_irq(priv->virq_err);
  ack = 1;
 }


 pci_ints = ((~sts_cap) >> STS_INTSTS_BIT) & ctrl & CTRL_HOSTINT;
 if (pci_ints) {

  for (i = 0; i < 4; i++) {
   if (pci_ints & (1 << i))
    generic_handle_irq(priv->irq_map[i]);
  }
  ack = 1;
 }






 if ((priv->irq_mode == 0) && (sts_cap & (STS_IDMA | STS_IDMAERR))) {
  generic_handle_irq(priv->virq_dma);
  ack = 1;
 }






 if (ack)
  desc->irq_data.chip->irq_eoi(&desc->irq_data);
}
