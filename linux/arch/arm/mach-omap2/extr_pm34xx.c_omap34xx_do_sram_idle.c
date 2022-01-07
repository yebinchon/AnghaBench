
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int omap34xx_cpu_suspend (unsigned long) ;

__attribute__((used)) static int omap34xx_do_sram_idle(unsigned long save_state)
{
 omap34xx_cpu_suspend(save_state);
 return 0;
}
