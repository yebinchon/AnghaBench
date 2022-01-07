
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw_omap {int dpll_data; } ;
struct clk_hw {int dummy; } ;


 int WARN_ON (int) ;
 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 int omap2_clk_is_hw_omap (struct clk_hw*) ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

__attribute__((used)) static struct clk_hw_omap *omap3_find_clkoutx2_dpll(struct clk_hw *hw)
{
 struct clk_hw_omap *pclk = ((void*)0);


 do {
  do {
   hw = clk_hw_get_parent(hw);
  } while (hw && (!omap2_clk_is_hw_omap(hw)));
  if (!hw)
   break;
  pclk = to_clk_hw_omap(hw);
 } while (pclk && !pclk->dpll_data);


 if (!pclk) {
  WARN_ON(1);
  return ((void*)0);
 }

 return pclk;
}
