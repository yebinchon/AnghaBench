
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct pll_config {int dummy; } ;
struct clk_pll {int mode_reg; } ;


 int clk_pll_configure (struct clk_pll*,struct regmap*,struct pll_config const*) ;
 int qcom_pll_set_fsm_mode (struct regmap*,int ,int,int ) ;

void clk_pll_configure_sr_hpm_lp(struct clk_pll *pll, struct regmap *regmap,
  const struct pll_config *config, bool fsm_mode)
{
 clk_pll_configure(pll, regmap, config);
 if (fsm_mode)
  qcom_pll_set_fsm_mode(regmap, pll->mode_reg, 1, 0);
}
