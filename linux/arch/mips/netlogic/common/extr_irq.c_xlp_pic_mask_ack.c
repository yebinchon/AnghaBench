
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_pic_irq {int picirq; } ;
struct irq_data {int dummy; } ;


 int ack_c0_eirr (int ) ;
 int clear_c0_eimr (int ) ;
 struct nlm_pic_irq* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void xlp_pic_mask_ack(struct irq_data *d)
{
 struct nlm_pic_irq *pd = irq_data_get_irq_chip_data(d);

 clear_c0_eimr(pd->picirq);
 ack_c0_eirr(pd->picirq);
}
