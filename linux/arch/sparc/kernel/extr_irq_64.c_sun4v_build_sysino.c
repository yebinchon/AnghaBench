
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int sun4v_irq ;
 int sysino_build_irq (int ,unsigned int,int *) ;
 int sysino_exists (int ,unsigned int) ;

__attribute__((used)) static int sun4v_build_sysino(u32 devhandle, unsigned int devino)
{
 int irq;

 irq = sysino_exists(devhandle, devino);
 if (irq)
  goto out;

 irq = sysino_build_irq(devhandle, devino, &sun4v_irq);
out:
 return irq;
}
