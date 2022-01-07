
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IRQ_NOAUTOEN ;
 int cookie_build_irq (int ,unsigned int,int *) ;
 int irq_set_status_flags (int,int ) ;
 int sun4v_virq ;

unsigned int sun4v_build_virq(u32 devhandle, unsigned int devino)
{
 int irq;

 irq = cookie_build_irq(devhandle, devino, &sun4v_virq);
 if (!irq)
  goto out;



 irq_set_status_flags(irq, IRQ_NOAUTOEN);

out:
 return irq;
}
