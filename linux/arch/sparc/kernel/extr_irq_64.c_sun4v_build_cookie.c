
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int cookie_build_irq (int ,unsigned int,int *) ;
 unsigned int cookie_exists (int ,unsigned int) ;
 int sun4v_virq ;

__attribute__((used)) static unsigned int sun4v_build_cookie(u32 devhandle, unsigned int devino)
{
 unsigned int irq;

 irq = cookie_exists(devhandle, devino);
 if (irq)
  goto out;

 irq = cookie_build_irq(devhandle, devino, &sun4v_virq);

out:
 return irq;
}
