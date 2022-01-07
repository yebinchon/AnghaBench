
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 int INTSTS0 ;
 int INTSTS1 ;



 unsigned short __raw_readw (int ) ;
 int __raw_writew (unsigned short,int ) ;
 int enable_se7206_irq (struct irq_data*) ;
 int irqd_irq_disabled (struct irq_data*) ;
 int irqd_irq_inprogress (struct irq_data*) ;

__attribute__((used)) static void eoi_se7206_irq(struct irq_data *data)
{
 unsigned short sts0,sts1;
 unsigned int irq = data->irq;

 if (!irqd_irq_disabled(data) && !irqd_irq_inprogress(data))
  enable_se7206_irq(data);

 sts0 = __raw_readw(INTSTS0);
 sts1 = __raw_readw(INTSTS1);

 switch (irq) {
 case 130:
  sts0 &= ~0x0010;
  break;
 case 129:
  sts0 &= ~0x000f;
  break;
 case 128:
  sts0 &= ~0x0f00;
  sts1 &= ~0x00ff;
  break;
 }
 __raw_writew(sts0, INTSTS0);
 __raw_writew(sts1, INTSTS1);
}
