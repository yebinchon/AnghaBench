
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amx3_post_suspend_common () ;
 int amx3_pre_suspend_common () ;
 int clkdm_sleep (int ) ;
 int clkdm_wakeup (int ) ;
 int cpu_suspend (unsigned long,int (*) (unsigned long)) ;
 int gfx_l4ls_clkdm ;

__attribute__((used)) static int am33xx_suspend(unsigned int state, int (*fn)(unsigned long),
     unsigned long args)
{
 int ret = 0;

 amx3_pre_suspend_common();
 ret = cpu_suspend(args, fn);
 amx3_post_suspend_common();
 clkdm_wakeup(gfx_l4ls_clkdm);
 clkdm_sleep(gfx_l4ls_clkdm);

 return ret;
}
