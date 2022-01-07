
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_dfll {scalar_t__ pmu_if; int dev; TYPE_1__* soc; } ;
struct dev_pm_opp {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 scalar_t__ TEGRA_DFLL_PMU_PWM ;
 unsigned long ULONG_MAX ;
 int dev_err (int ,char*) ;
 struct dev_pm_opp* dev_pm_opp_find_freq_floor (int ,unsigned long*) ;
 unsigned long dev_pm_opp_get_voltage (struct dev_pm_opp*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;
 int dfll_build_i2c_lut (struct tegra_dfll*,unsigned long) ;
 int dfll_build_pwm_lut (struct tegra_dfll*,unsigned long) ;

__attribute__((used)) static int dfll_build_lut(struct tegra_dfll *td)
{
 unsigned long rate, v_max;
 struct dev_pm_opp *opp;

 rate = ULONG_MAX;
 opp = dev_pm_opp_find_freq_floor(td->soc->dev, &rate);
 if (IS_ERR(opp)) {
  dev_err(td->dev, "couldn't get vmax opp, empty opp table?\n");
  return -EINVAL;
 }
 v_max = dev_pm_opp_get_voltage(opp);
 dev_pm_opp_put(opp);

 if (td->pmu_if == TEGRA_DFLL_PMU_PWM)
  return dfll_build_pwm_lut(td, v_max);
 else
  return dfll_build_i2c_lut(td, v_max);
}
