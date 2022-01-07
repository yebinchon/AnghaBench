
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int AU1000_INTC1_INT_BASE ;
 int AU1000_SYS_WAKEMSK ;
 int EINVAL ;
 unsigned long alchemy_rdsys (int ) ;
 int alchemy_wrsys (unsigned long,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int au1x_ic1_setwake(struct irq_data *d, unsigned int on)
{
 int bit = d->irq - AU1000_INTC1_INT_BASE;
 unsigned long wakemsk, flags;




 if ((bit < 0) || (bit > 7))
  return -EINVAL;

 local_irq_save(flags);
 wakemsk = alchemy_rdsys(AU1000_SYS_WAKEMSK);
 if (on)
  wakemsk |= 1 << bit;
 else
  wakemsk &= ~(1 << bit);
 alchemy_wrsys(wakemsk, AU1000_SYS_WAKEMSK);
 local_irq_restore(flags);

 return 0;
}
