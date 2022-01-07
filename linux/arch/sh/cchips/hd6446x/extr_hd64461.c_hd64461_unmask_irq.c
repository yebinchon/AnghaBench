
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 unsigned int HD64461_IRQBASE ;
 int HD64461_NIMR ;
 unsigned short __raw_readw (int ) ;
 int __raw_writew (unsigned short,int ) ;

__attribute__((used)) static void hd64461_unmask_irq(struct irq_data *data)
{
 unsigned int irq = data->irq;
 unsigned short nimr;
 unsigned short mask = 1 << (irq - HD64461_IRQBASE);

 nimr = __raw_readw(HD64461_NIMR);
 nimr &= ~mask;
 __raw_writew(nimr, HD64461_NIMR);
}
