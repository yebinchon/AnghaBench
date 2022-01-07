
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 long __mtk_pll_recalc_rate (struct mtk_clk_pll*,unsigned long,int ,int) ;
 int mtk_pll_calc_values (struct mtk_clk_pll*,int *,int*,unsigned long,unsigned long) ;
 struct mtk_clk_pll* to_mtk_clk_pll (struct clk_hw*) ;

__attribute__((used)) static long mtk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *prate)
{
 struct mtk_clk_pll *pll = to_mtk_clk_pll(hw);
 u32 pcw = 0;
 int postdiv;

 mtk_pll_calc_values(pll, &pcw, &postdiv, rate, *prate);

 return __mtk_pll_recalc_rate(pll, *prate, pcw, postdiv);
}
