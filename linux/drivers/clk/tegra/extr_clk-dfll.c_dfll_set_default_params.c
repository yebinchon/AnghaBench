
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dfll {int sample_rate; int force_mode; int cf; int ci; int cg; int droop_ctrl; scalar_t__ cg_scale; int ref_rate; } ;


 int BUG_ON (int) ;
 int DFLL_CONFIG ;
 int DFLL_CONFIG_DIV_MASK ;
 int DFLL_DROOP_CTRL ;
 int DFLL_MONITOR_CTRL ;
 int DFLL_MONITOR_CTRL_FREQ ;
 int DFLL_PARAMS ;
 int DFLL_PARAMS_CF_PARAM_SHIFT ;
 int DFLL_PARAMS_CG_PARAM_SHIFT ;
 int DFLL_PARAMS_CG_SCALE ;
 int DFLL_PARAMS_CI_PARAM_SHIFT ;
 int DFLL_PARAMS_FORCE_MODE_SHIFT ;
 int DIV_ROUND_UP (int ,int) ;
 int dfll_tune_low (struct tegra_dfll*) ;
 int dfll_writel (struct tegra_dfll*,int,int ) ;

__attribute__((used)) static void dfll_set_default_params(struct tegra_dfll *td)
{
 u32 val;

 val = DIV_ROUND_UP(td->ref_rate, td->sample_rate * 32);
 BUG_ON(val > DFLL_CONFIG_DIV_MASK);
 dfll_writel(td, val, DFLL_CONFIG);

 val = (td->force_mode << DFLL_PARAMS_FORCE_MODE_SHIFT) |
  (td->cf << DFLL_PARAMS_CF_PARAM_SHIFT) |
  (td->ci << DFLL_PARAMS_CI_PARAM_SHIFT) |
  (td->cg << DFLL_PARAMS_CG_PARAM_SHIFT) |
  (td->cg_scale ? DFLL_PARAMS_CG_SCALE : 0);
 dfll_writel(td, val, DFLL_PARAMS);

 dfll_tune_low(td);
 dfll_writel(td, td->droop_ctrl, DFLL_DROOP_CTRL);
 dfll_writel(td, DFLL_MONITOR_CTRL_FREQ, DFLL_MONITOR_CTRL);
}
