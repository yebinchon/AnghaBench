
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int EINVAL ;

 int omap1_pm_suspend () ;

__attribute__((used)) static int omap_pm_enter(suspend_state_t state)
{
 switch (state)
 {
 case 128:
  omap1_pm_suspend();
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
