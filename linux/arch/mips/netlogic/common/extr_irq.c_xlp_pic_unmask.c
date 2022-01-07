
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlm_pic_irq {int irt; TYPE_1__* node; int picirq; int (* extra_ack ) (struct irq_data*) ;} ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int picbase; } ;


 int BUG_ON (int) ;
 struct nlm_pic_irq* irq_data_get_irq_chip_data (struct irq_data*) ;
 int nlm_pic_ack (int ,int ) ;
 int set_c0_eimr (int ) ;
 int stub1 (struct irq_data*) ;

__attribute__((used)) static void xlp_pic_unmask(struct irq_data *d)
{
 struct nlm_pic_irq *pd = irq_data_get_irq_chip_data(d);

 BUG_ON(!pd);

 if (pd->extra_ack)
  pd->extra_ack(d);


 set_c0_eimr(pd->picirq);


 nlm_pic_ack(pd->node->picbase, pd->irt);
}
