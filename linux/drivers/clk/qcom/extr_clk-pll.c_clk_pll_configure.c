
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct pll_config {int aux_output_mask; int main_output_mask; int mn_ena_mask; int post_div_mask; int pre_div_mask; int vco_mask; int post_div_val; int pre_div_val; int vco_val; int n; int m; int l; } ;
struct clk_pll {int config_reg; int n_reg; int m_reg; int l_reg; } ;


 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static void clk_pll_configure(struct clk_pll *pll, struct regmap *regmap,
 const struct pll_config *config)
{
 u32 val;
 u32 mask;

 regmap_write(regmap, pll->l_reg, config->l);
 regmap_write(regmap, pll->m_reg, config->m);
 regmap_write(regmap, pll->n_reg, config->n);

 val = config->vco_val;
 val |= config->pre_div_val;
 val |= config->post_div_val;
 val |= config->mn_ena_mask;
 val |= config->main_output_mask;
 val |= config->aux_output_mask;

 mask = config->vco_mask;
 mask |= config->pre_div_mask;
 mask |= config->post_div_mask;
 mask |= config->mn_ena_mask;
 mask |= config->main_output_mask;
 mask |= config->aux_output_mask;

 regmap_update_bits(regmap, pll->config_reg, mask, val);
}
