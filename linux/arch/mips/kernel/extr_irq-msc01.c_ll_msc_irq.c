
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSC01_IC_VEC ;
 int MSCIC_READ (int ,unsigned int) ;
 int do_IRQ (scalar_t__) ;
 scalar_t__ irq_base ;

void ll_msc_irq(void)
{
 unsigned int irq;


 MSCIC_READ(MSC01_IC_VEC, irq);
 if (irq < 64)
  do_IRQ(irq + irq_base);
 else {

 }
}
