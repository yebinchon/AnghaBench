
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct clk_alpha_pll {int flags; } ;
struct alpha_pll_config {int vco_mask; int post_div_mask; int pre_div_mask; int early_output_mask; int aux2_output_mask; int aux_output_mask; int main_output_mask; int alpha_mode_mask; int alpha_en_mask; int vco_val; int post_div_val; int pre_div_val; int alpha_hi; int config_ctl_hi_val; int config_ctl_val; int alpha; int l; } ;


 int PLL_ALPHA_VAL (struct clk_alpha_pll*) ;
 int PLL_ALPHA_VAL_U (struct clk_alpha_pll*) ;
 int PLL_CONFIG_CTL (struct clk_alpha_pll*) ;
 int PLL_CONFIG_CTL_U (struct clk_alpha_pll*) ;
 int PLL_L_VAL (struct clk_alpha_pll*) ;
 int PLL_MODE (struct clk_alpha_pll*) ;
 int PLL_USER_CTL (struct clk_alpha_pll*) ;
 int SUPPORTS_FSM_MODE ;
 int pll_alpha_width (struct clk_alpha_pll*) ;
 scalar_t__ pll_has_64bit_config (struct clk_alpha_pll*) ;
 int qcom_pll_set_fsm_mode (struct regmap*,int ,int,int ) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int ) ;

void clk_alpha_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
        const struct alpha_pll_config *config)
{
 u32 val, mask;

 regmap_write(regmap, PLL_L_VAL(pll), config->l);
 regmap_write(regmap, PLL_ALPHA_VAL(pll), config->alpha);
 regmap_write(regmap, PLL_CONFIG_CTL(pll), config->config_ctl_val);

 if (pll_has_64bit_config(pll))
  regmap_write(regmap, PLL_CONFIG_CTL_U(pll),
        config->config_ctl_hi_val);

 if (pll_alpha_width(pll) > 32)
  regmap_write(regmap, PLL_ALPHA_VAL_U(pll), config->alpha_hi);

 val = config->main_output_mask;
 val |= config->aux_output_mask;
 val |= config->aux2_output_mask;
 val |= config->early_output_mask;
 val |= config->pre_div_val;
 val |= config->post_div_val;
 val |= config->vco_val;
 val |= config->alpha_en_mask;
 val |= config->alpha_mode_mask;

 mask = config->main_output_mask;
 mask |= config->aux_output_mask;
 mask |= config->aux2_output_mask;
 mask |= config->early_output_mask;
 mask |= config->pre_div_mask;
 mask |= config->post_div_mask;
 mask |= config->vco_mask;

 regmap_update_bits(regmap, PLL_USER_CTL(pll), mask, val);

 if (pll->flags & SUPPORTS_FSM_MODE)
  qcom_pll_set_fsm_mode(regmap, PLL_MODE(pll), 6, 0);
}
