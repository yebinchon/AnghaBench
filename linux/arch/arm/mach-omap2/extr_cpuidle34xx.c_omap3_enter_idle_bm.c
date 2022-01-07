
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct omap3_idle_statedata {scalar_t__ per_min_state; } ;
struct cpuidle_driver {int safe_state_index; } ;
struct cpuidle_device {int dummy; } ;


 scalar_t__ PWRDM_POWER_ON ;
 int cam_pd ;
 int next_valid_state (struct cpuidle_device*,struct cpuidle_driver*,int) ;
 int omap3_enter_idle (struct cpuidle_device*,struct cpuidle_driver*,int) ;
 struct omap3_idle_statedata* omap3_idle_data ;
 int per_pd ;
 scalar_t__ pwrdm_read_next_pwrst (int ) ;
 scalar_t__ pwrdm_read_pwrst (int ) ;
 int pwrdm_set_next_pwrst (int ,scalar_t__) ;

__attribute__((used)) static int omap3_enter_idle_bm(struct cpuidle_device *dev,
          struct cpuidle_driver *drv,
          int index)
{
 int new_state_idx, ret;
 u8 per_next_state, per_saved_state;
 struct omap3_idle_statedata *cx;





 if (pwrdm_read_pwrst(cam_pd) == PWRDM_POWER_ON)
  new_state_idx = drv->safe_state_index;
 else
  new_state_idx = next_valid_state(dev, drv, index);
 cx = &omap3_idle_data[new_state_idx];

 per_next_state = pwrdm_read_next_pwrst(per_pd);
 per_saved_state = per_next_state;
 if (per_next_state < cx->per_min_state) {
  per_next_state = cx->per_min_state;
  pwrdm_set_next_pwrst(per_pd, per_next_state);
 }

 ret = omap3_enter_idle(dev, drv, new_state_idx);


 if (per_next_state != per_saved_state)
  pwrdm_set_next_pwrst(per_pd, per_saved_state);

 return ret;
}
