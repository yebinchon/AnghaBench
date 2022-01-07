
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct omap3_idle_statedata {int flags; scalar_t__ mpu_state; scalar_t__ core_state; } ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;
struct TYPE_5__ {int * pwrdm_clkdms; } ;


 int OMAP_CPUIDLE_CX_NO_CLKDM_IDLE ;
 scalar_t__ PWRDM_POWER_OFF ;
 int clkdm_allow_idle (int ) ;
 int clkdm_deny_idle (int ) ;
 TYPE_1__* core_pd ;
 int cpu_pm_enter () ;
 int cpu_pm_exit () ;
 TYPE_1__* mpu_pd ;
 scalar_t__ need_resched () ;
 struct omap3_idle_statedata* omap3_idle_data ;
 scalar_t__ omap_irq_pending () ;
 int omap_sram_idle () ;
 scalar_t__ pwrdm_read_prev_pwrst (TYPE_1__*) ;
 int pwrdm_set_next_pwrst (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int omap3_enter_idle(struct cpuidle_device *dev,
       struct cpuidle_driver *drv,
       int index)
{
 struct omap3_idle_statedata *cx = &omap3_idle_data[index];

 if (omap_irq_pending() || need_resched())
  goto return_sleep_time;


 if (cx->flags & OMAP_CPUIDLE_CX_NO_CLKDM_IDLE) {
  clkdm_deny_idle(mpu_pd->pwrdm_clkdms[0]);
 } else {
  pwrdm_set_next_pwrst(mpu_pd, cx->mpu_state);
  pwrdm_set_next_pwrst(core_pd, cx->core_state);
 }





 if (cx->mpu_state == PWRDM_POWER_OFF)
  cpu_pm_enter();


 omap_sram_idle();





 if (cx->mpu_state == PWRDM_POWER_OFF &&
     pwrdm_read_prev_pwrst(mpu_pd) == PWRDM_POWER_OFF)
  cpu_pm_exit();


 if (cx->flags & OMAP_CPUIDLE_CX_NO_CLKDM_IDLE)
  clkdm_allow_idle(mpu_pd->pwrdm_clkdms[0]);

return_sleep_time:

 return index;
}
