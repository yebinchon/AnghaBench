
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HL_NR_IRL ;
 int* irl2irq ;

__attribute__((used)) static int highlander_irq_demux(int irq)
{
 if (irq >= HL_NR_IRL || irq < 0 || !irl2irq[irq])
  return irq;

 return irl2irq[irq];
}
