
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;


 scalar_t__ INTR_RESET_REG ;
 scalar_t__ brd_io ;
 int expio_mask_irq (struct irq_data*) ;
 int imx_writew (int,scalar_t__) ;

__attribute__((used)) static void expio_ack_irq(struct irq_data *d)
{
 u32 expio = d->hwirq;

 imx_writew(1 << expio, brd_io + INTR_RESET_REG);
 imx_writew(0, brd_io + INTR_RESET_REG);
 expio_mask_irq(d);
}
