
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlm_pic_irq {TYPE_1__* node; int irt; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int piclock; int picbase; } ;


 int BUG_ON (int) ;
 struct nlm_pic_irq* irq_data_get_irq_chip_data (struct irq_data*) ;
 int nlm_pic_disable_irt (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void xlp_pic_disable(struct irq_data *d)
{
 struct nlm_pic_irq *pd = irq_data_get_irq_chip_data(d);
 unsigned long flags;

 BUG_ON(!pd);
 spin_lock_irqsave(&pd->node->piclock, flags);
 nlm_pic_disable_irt(pd->node->picbase, pd->irt);
 spin_unlock_irqrestore(&pd->node->piclock, flags);
}
