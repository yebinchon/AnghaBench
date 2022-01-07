
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct irq_data {unsigned int irq; } ;





 int MCFEPORT_EPPAR ;
 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;
 int handle_edge_irq ;
 int irq2ebit (unsigned int) ;
 int irq_set_handler (unsigned int,int ) ;

__attribute__((used)) static int intc_irq_set_type(struct irq_data *d, unsigned int type)
{
 unsigned int ebit, irq = d->irq;
 u16 pa, tb;

 switch (type) {
 case 128:
  tb = 0x1;
  break;
 case 129:
  tb = 0x2;
  break;
 case 130:
  tb = 0x3;
  break;
 default:

  tb = 0;
  break;
 }

 if (tb)
  irq_set_handler(irq, handle_edge_irq);

 ebit = irq2ebit(irq) * 2;
 pa = __raw_readw(MCFEPORT_EPPAR);
 pa = (pa & ~(0x3 << ebit)) | (tb << ebit);
 __raw_writew(pa, MCFEPORT_EPPAR);

 return 0;
}
