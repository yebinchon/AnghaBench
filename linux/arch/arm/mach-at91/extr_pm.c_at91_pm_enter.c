
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int AT91_PM_ULP0 ;



 int at91_pinctrl_gpio_resume () ;
 int at91_pinctrl_gpio_suspend () ;
 int at91_pm_suspend (int) ;
 int at91_pm_verify_clocks () ;
 int cpu_do_idle () ;
 int pr_debug (char*,int) ;
 TYPE_2__ soc_pm ;

__attribute__((used)) static int at91_pm_enter(suspend_state_t state)
{




 switch (state) {
 case 130:
 case 128:



  if (soc_pm.data.mode >= AT91_PM_ULP0 &&
      !at91_pm_verify_clocks())
   goto error;

  at91_pm_suspend(state);

  break;

 case 129:
  cpu_do_idle();
  break;

 default:
  pr_debug("AT91: PM - bogus suspend state %d\n", state);
  goto error;
 }

error:



 return 0;
}
