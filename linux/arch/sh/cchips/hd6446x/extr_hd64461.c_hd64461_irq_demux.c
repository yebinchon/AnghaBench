
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 unsigned int HD64461_IRQBASE ;
 int HD64461_IRQ_NUM ;
 int HD64461_NIRR ;
 unsigned short __raw_readw (int ) ;
 int generic_handle_irq (unsigned int) ;

__attribute__((used)) static void hd64461_irq_demux(struct irq_desc *desc)
{
 unsigned short intv = __raw_readw(HD64461_NIRR);
 unsigned int ext_irq = HD64461_IRQBASE;

 intv &= (1 << HD64461_IRQ_NUM) - 1;

 for (; intv; intv >>= 1, ext_irq++) {
  if (!(intv & 1))
   continue;

  generic_handle_irq(ext_irq);
 }
}
