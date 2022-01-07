
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ic_sivec; } ;


 TYPE_1__* cpm2_intctl ;
 int cpm2_pic_host ;
 unsigned long in_be32 (int *) ;
 unsigned int irq_linear_revmap (int ,int) ;

unsigned int cpm2_get_irq(void)
{
 int irq;
 unsigned long bits;



        bits = in_be32(&cpm2_intctl->ic_sivec);
        irq = bits >> 26;

 if (irq == 0)
  return(-1);
 return irq_linear_revmap(cpm2_pic_host, irq);
}
