
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {scalar_t__ chip_data; } ;
struct grpci2_priv {TYPE_1__* regs; } ;
struct TYPE_2__ {int ctrl; } ;


 int REGLOAD (int ) ;
 int REGSTORE (int ,int) ;
 int grpci2_dev_lock ;
 struct grpci2_priv* grpci2priv ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void grpci2_mask_irq(struct irq_data *data)
{
 unsigned long flags;
 unsigned int irqidx;
 struct grpci2_priv *priv = grpci2priv;

 irqidx = (unsigned int)data->chip_data - 1;
 if (irqidx > 3)
  return;

 spin_lock_irqsave(&grpci2_dev_lock, flags);
 REGSTORE(priv->regs->ctrl, REGLOAD(priv->regs->ctrl) & ~(1 << irqidx));
 spin_unlock_irqrestore(&grpci2_dev_lock, flags);
}
