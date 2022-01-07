
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int sun4v_build_cookie (int ,unsigned int) ;
 unsigned int sun4v_build_sysino (int ,unsigned int) ;
 scalar_t__ sun4v_cookie_only_virqs () ;

unsigned int sun4v_build_irq(u32 devhandle, unsigned int devino)
{
 unsigned int irq;

 if (sun4v_cookie_only_virqs())
  irq = sun4v_build_cookie(devhandle, devino);
 else
  irq = sun4v_build_sysino(devhandle, devino);

 return irq;
}
