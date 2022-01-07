
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 int INTC_IPR01 ;
 int INTMSK0 ;
 int INTMSK1 ;



 unsigned short __raw_readw (int ) ;
 int __raw_writew (unsigned short,int ) ;

__attribute__((used)) static void disable_se7206_irq(struct irq_data *data)
{
 unsigned int irq = data->irq;
 unsigned short val;
 unsigned short mask = 0xffff ^ (0x0f << 4 * (3 - (130 - irq)));
 unsigned short msk0,msk1;


 val = __raw_readw(INTC_IPR01);
 val &= mask;
 __raw_writew(val, INTC_IPR01);

 msk0 = __raw_readw(INTMSK0);
 msk1 = __raw_readw(INTMSK1);

 switch (irq) {
 case 130:
  msk0 |= 0x0010;
  break;
 case 129:
  msk0 |= 0x000f;
  break;
 case 128:
  msk0 |= 0x0f00;
  msk1 |= 0x00ff;
  break;
 }
 __raw_writew(msk0, INTMSK0);
 __raw_writew(msk1, INTMSK1);
}
