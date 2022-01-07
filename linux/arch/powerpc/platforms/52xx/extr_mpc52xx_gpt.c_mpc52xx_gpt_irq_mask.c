
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_gpt_priv {int lock; TYPE_1__* regs; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int mode; } ;


 int MPC52xx_GPT_MODE_IRQ_EN ;
 int clrbits32 (int *,int ) ;
 struct mpc52xx_gpt_priv* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mpc52xx_gpt_irq_mask(struct irq_data *d)
{
 struct mpc52xx_gpt_priv *gpt = irq_data_get_irq_chip_data(d);
 unsigned long flags;

 raw_spin_lock_irqsave(&gpt->lock, flags);
 clrbits32(&gpt->regs->mode, MPC52xx_GPT_MODE_IRQ_EN);
 raw_spin_unlock_irqrestore(&gpt->lock, flags);
}
