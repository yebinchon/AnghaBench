
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCU_PM_NORMAL ;
 int SCU_PM_POWEROFF ;
 int am43xx_check_off_mode_enable () ;
 int amx3_post_suspend_common () ;
 int amx3_pre_suspend_common () ;
 int cpu_suspend (unsigned long,int (*) (unsigned long)) ;
 int scu_base ;
 int scu_power_mode (int ,int ) ;

__attribute__((used)) static int am43xx_suspend(unsigned int state, int (*fn)(unsigned long),
     unsigned long args)
{
 int ret = 0;

 amx3_pre_suspend_common();
 scu_power_mode(scu_base, SCU_PM_POWEROFF);
 ret = cpu_suspend(args, fn);
 scu_power_mode(scu_base, SCU_PM_NORMAL);

 if (!am43xx_check_off_mode_enable())
  amx3_post_suspend_common();

 return ret;
}
