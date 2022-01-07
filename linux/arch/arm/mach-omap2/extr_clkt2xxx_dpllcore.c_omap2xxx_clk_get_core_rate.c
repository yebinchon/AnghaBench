
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u32 ;


 long long CORE_CLK_SRC_32K ;
 int WARN_ON (int) ;
 int dpll_core_ck ;
 long long omap2_get_dpll_rate (int ) ;
 long long omap2xxx_cm_get_core_clk_src () ;

unsigned long omap2xxx_clk_get_core_rate(void)
{
 long long core_clk;
 u32 v;

 WARN_ON(!dpll_core_ck);

 core_clk = omap2_get_dpll_rate(dpll_core_ck);

 v = omap2xxx_cm_get_core_clk_src();

 if (v == CORE_CLK_SRC_32K)
  core_clk = 32768;
 else
  core_clk *= v;

 return core_clk;
}
