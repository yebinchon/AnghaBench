
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irqhost; scalar_t__ coreint_flag; } ;


 int BUG_ON (int ) ;
 int SPRN_EPR ;
 int ev_int_iack (int ,int*) ;
 TYPE_1__* global_ehv_pic ;
 unsigned int irq_linear_revmap (int ,int) ;
 int mfspr (int ) ;

unsigned int ehv_pic_get_irq(void)
{
 int irq;

 BUG_ON(global_ehv_pic == ((void*)0));

 if (global_ehv_pic->coreint_flag)
  irq = mfspr(SPRN_EPR);
 else
  ev_int_iack(0, &irq);

 if (irq == 0xFFFF)
  return 0;





 return irq_linear_revmap(global_ehv_pic->irqhost, irq);
}
