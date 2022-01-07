
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {scalar_t__ chip_data; } ;
struct grpci1_priv {TYPE_1__* regs; } ;
struct TYPE_2__ {int irq; } ;


 scalar_t__ IRQ_MASK_BIT ;
 int REGLOAD (int ) ;
 int REGSTORE (int ,int) ;
 struct grpci1_priv* grpci1priv ;

__attribute__((used)) static void grpci1_unmask_irq(struct irq_data *data)
{
 u32 irqidx;
 struct grpci1_priv *priv = grpci1priv;

 irqidx = (u32)data->chip_data - 1;
 if (irqidx > 3)
  return;
 irqidx += IRQ_MASK_BIT;

 REGSTORE(priv->regs->irq, REGLOAD(priv->regs->irq) | (1 << irqidx));
}
