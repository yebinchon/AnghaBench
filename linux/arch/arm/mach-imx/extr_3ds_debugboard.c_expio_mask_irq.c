
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct irq_data {int hwirq; } ;


 scalar_t__ INTR_MASK_REG ;
 scalar_t__ brd_io ;
 int imx_readw (scalar_t__) ;
 int imx_writew (int,scalar_t__) ;

__attribute__((used)) static void expio_mask_irq(struct irq_data *d)
{
 u16 reg;
 u32 expio = d->hwirq;

 reg = imx_readw(brd_io + INTR_MASK_REG);
 reg |= (1 << expio);
 imx_writew(reg, brd_io + INTR_MASK_REG);
}
