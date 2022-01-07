
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R2D_NR_IRL ;
 int* irl2irq ;

int rts7751r2d_irq_demux(int irq)
{
 if (irq >= R2D_NR_IRL || irq < 0 || !irl2irq[irq])
  return irq;

 return irl2irq[irq];
}
