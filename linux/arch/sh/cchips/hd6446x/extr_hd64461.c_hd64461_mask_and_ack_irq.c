
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ irq; } ;


 scalar_t__ HD64461_IRQBASE ;
 int HD64461_PCC1CSCR ;
 int __raw_writeb (int,int ) ;
 int hd64461_mask_irq (struct irq_data*) ;

__attribute__((used)) static void hd64461_mask_and_ack_irq(struct irq_data *data)
{
 hd64461_mask_irq(data);





}
