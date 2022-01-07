
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct tegra_dfll {unsigned long* lut_uv; TYPE_1__* soc; } ;
struct dev_pm_opp {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 struct dev_pm_opp* dev_pm_opp_find_freq_ceil (int ,unsigned long*) ;
 unsigned long dev_pm_opp_get_voltage (struct dev_pm_opp*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;

__attribute__((used)) static unsigned long get_dvco_rate_below(struct tegra_dfll *td, u8 out_min)
{
 struct dev_pm_opp *opp;
 unsigned long rate, prev_rate;
 unsigned long uv, min_uv;

 min_uv = td->lut_uv[out_min];
 for (rate = 0, prev_rate = 0; ; rate++) {
  opp = dev_pm_opp_find_freq_ceil(td->soc->dev, &rate);
  if (IS_ERR(opp))
   break;

  uv = dev_pm_opp_get_voltage(opp);
  dev_pm_opp_put(opp);

  if (uv && uv > min_uv)
   return prev_rate;

  prev_rate = rate;
 }

 return prev_rate;
}
