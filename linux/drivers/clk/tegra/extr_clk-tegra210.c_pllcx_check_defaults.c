
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_clk_pll_params {int dummy; } ;


 int PLLCX_MISC0_DEFAULT_VALUE ;
 int PLLCX_MISC0_RESET ;
 int PLLCX_MISC0_WRITE_MASK ;
 int PLLCX_MISC1_DEFAULT_VALUE ;
 int PLLCX_MISC1_IDDQ ;
 int PLLCX_MISC1_WRITE_MASK ;
 int PLLCX_MISC2_DEFAULT_VALUE ;
 int PLLCX_MISC2_WRITE_MASK ;
 int PLLCX_MISC3_DEFAULT_VALUE ;
 int PLLCX_MISC3_WRITE_MASK ;
 int _pll_misc_chk_default (int ,struct tegra_clk_pll_params*,int,int,int ) ;
 int clk_base ;

__attribute__((used)) static void pllcx_check_defaults(struct tegra_clk_pll_params *params)
{
 u32 default_val;

 default_val = PLLCX_MISC0_DEFAULT_VALUE & (~PLLCX_MISC0_RESET);
 _pll_misc_chk_default(clk_base, params, 0, default_val,
   PLLCX_MISC0_WRITE_MASK);

 default_val = PLLCX_MISC1_DEFAULT_VALUE & (~PLLCX_MISC1_IDDQ);
 _pll_misc_chk_default(clk_base, params, 1, default_val,
   PLLCX_MISC1_WRITE_MASK);

 default_val = PLLCX_MISC2_DEFAULT_VALUE;
 _pll_misc_chk_default(clk_base, params, 2, default_val,
   PLLCX_MISC2_WRITE_MASK);

 default_val = PLLCX_MISC3_DEFAULT_VALUE;
 _pll_misc_chk_default(clk_base, params, 3, default_val,
   PLLCX_MISC3_WRITE_MASK);
}
