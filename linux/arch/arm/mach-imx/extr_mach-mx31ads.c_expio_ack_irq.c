
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;


 int PBC_INTSTATUS_REG ;
 int imx_writew (int,int ) ;

__attribute__((used)) static void expio_ack_irq(struct irq_data *d)
{
 u32 expio = d->hwirq;

 imx_writew(1 << expio, PBC_INTSTATUS_REG);
}
