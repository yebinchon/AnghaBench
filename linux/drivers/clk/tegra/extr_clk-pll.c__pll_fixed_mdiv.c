
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tegra_clk_pll_params {unsigned long cf_min; int flags; int mdiv_default; unsigned long cf_max; } ;


 int TEGRA_MDIV_NEW ;
 int min (int,int) ;

__attribute__((used)) static int _pll_fixed_mdiv(struct tegra_clk_pll_params *pll_params,
      unsigned long parent_rate)
{
 u16 mdiv = parent_rate / pll_params->cf_min;

 if (pll_params->flags & TEGRA_MDIV_NEW)
  return (!pll_params->mdiv_default ? mdiv :
   min(mdiv, pll_params->mdiv_default));

 if (pll_params->mdiv_default)
  return pll_params->mdiv_default;

 if (parent_rate > pll_params->cf_max)
  return 2;
 else
  return 1;
}
