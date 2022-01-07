
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_pll_freq_table {int m; int n; } ;


 int PLL_SDM_COEFF ;
 int sdin_get_n_eff (struct tegra_clk_pll_freq_table*) ;

__attribute__((used)) static void tegra210_clk_pll_set_gain(struct tegra_clk_pll_freq_table *cfg)
{
 cfg->n = sdin_get_n_eff(cfg);
 cfg->m *= PLL_SDM_COEFF;
}
