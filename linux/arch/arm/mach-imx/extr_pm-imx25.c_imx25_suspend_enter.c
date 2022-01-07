
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int CONFIG_PM ;
 int EINVAL ;
 int IS_ENABLED (int ) ;

 int cpu_do_idle () ;

__attribute__((used)) static int imx25_suspend_enter(suspend_state_t state)
{
 if (!IS_ENABLED(CONFIG_PM))
  return 0;

 switch (state) {
 case 128:
  cpu_do_idle();
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
