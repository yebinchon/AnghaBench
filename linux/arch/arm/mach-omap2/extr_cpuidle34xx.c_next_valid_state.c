
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct omap3_idle_statedata {scalar_t__ mpu_state; scalar_t__ core_state; } ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int IS_PM34XX_ERRATUM (int ) ;
 int PM_SDRC_WAKEUP_ERRATUM_i583 ;
 scalar_t__ PWRDM_POWER_OFF ;
 scalar_t__ PWRDM_POWER_RET ;
 scalar_t__ enable_off_mode ;
 struct omap3_idle_statedata* omap3_idle_data ;

__attribute__((used)) static int next_valid_state(struct cpuidle_device *dev,
       struct cpuidle_driver *drv, int index)
{
 struct omap3_idle_statedata *cx = &omap3_idle_data[index];
 u32 mpu_deepest_state = PWRDM_POWER_RET;
 u32 core_deepest_state = PWRDM_POWER_RET;
 int idx;
 int next_index = 0;

 if (enable_off_mode) {
  mpu_deepest_state = PWRDM_POWER_OFF;





  if (!IS_PM34XX_ERRATUM(PM_SDRC_WAKEUP_ERRATUM_i583))
   core_deepest_state = PWRDM_POWER_OFF;
 }


 if ((cx->mpu_state >= mpu_deepest_state) &&
     (cx->core_state >= core_deepest_state))
  return index;





 for (idx = index - 1; idx >= 0; idx--) {
  cx = &omap3_idle_data[idx];
  if ((cx->mpu_state >= mpu_deepest_state) &&
      (cx->core_state >= core_deepest_state)) {
   next_index = idx;
   break;
  }
 }

 return next_index;
}
