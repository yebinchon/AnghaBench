
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_idle_poll_ctrl (int) ;

__attribute__((used)) static int omap_pm_prepare(void)
{

 cpu_idle_poll_ctrl(1);
 return 0;
}
