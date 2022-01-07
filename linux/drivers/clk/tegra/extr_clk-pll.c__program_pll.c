
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_clk_pll_freq_table {scalar_t__ m; scalar_t__ p; } ;
struct tegra_clk_pll {TYPE_1__* params; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* dyn_ramp ) (struct tegra_clk_pll*,struct tegra_clk_pll_freq_table*) ;int flags; int (* set_defaults ) (struct tegra_clk_pll*) ;scalar_t__ defaults_set; } ;


 int TEGRA_PLL_HAS_CPCON ;
 int _clk_pll_disable (struct clk_hw*) ;
 int _clk_pll_enable (struct clk_hw*) ;
 int _get_pll_mnp (struct tegra_clk_pll*,struct tegra_clk_pll_freq_table*) ;
 int _update_pll_cpcon (struct tegra_clk_pll*,struct tegra_clk_pll_freq_table*,unsigned long) ;
 int _update_pll_mnp (struct tegra_clk_pll*,struct tegra_clk_pll_freq_table*) ;
 int clk_pll_is_enabled (struct clk_hw*) ;
 int clk_pll_wait_for_lock (struct tegra_clk_pll*) ;
 int pll_clk_start_ss (struct tegra_clk_pll*) ;
 int pll_clk_stop_ss (struct tegra_clk_pll*) ;
 int stub1 (struct tegra_clk_pll*,struct tegra_clk_pll_freq_table*) ;
 int stub2 (struct tegra_clk_pll*) ;
 struct tegra_clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static int _program_pll(struct clk_hw *hw, struct tegra_clk_pll_freq_table *cfg,
   unsigned long rate)
{
 struct tegra_clk_pll *pll = to_clk_pll(hw);
 struct tegra_clk_pll_freq_table old_cfg;
 int state, ret = 0;

 state = clk_pll_is_enabled(hw);

 _get_pll_mnp(pll, &old_cfg);

 if (state && pll->params->defaults_set && pll->params->dyn_ramp &&
   (cfg->m == old_cfg.m) && (cfg->p == old_cfg.p)) {
  ret = pll->params->dyn_ramp(pll, cfg);
  if (!ret)
   return 0;
 }

 if (state) {
  pll_clk_stop_ss(pll);
  _clk_pll_disable(hw);
 }

 if (!pll->params->defaults_set && pll->params->set_defaults)
  pll->params->set_defaults(pll);

 _update_pll_mnp(pll, cfg);

 if (pll->params->flags & TEGRA_PLL_HAS_CPCON)
  _update_pll_cpcon(pll, cfg, rate);

 if (state) {
  _clk_pll_enable(hw);
  ret = clk_pll_wait_for_lock(pll);
  pll_clk_start_ss(pll);
 }

 return ret;
}
