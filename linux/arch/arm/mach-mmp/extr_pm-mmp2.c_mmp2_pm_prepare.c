
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POWER_MODE_SYS_SLEEP ;
 int mmp2_pm_enter_lowpower_mode (int ) ;

__attribute__((used)) static int mmp2_pm_prepare(void)
{
 mmp2_pm_enter_lowpower_mode(POWER_MODE_SYS_SLEEP);

 return 0;
}
