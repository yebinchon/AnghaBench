
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 int mtk_pll_calc_values (struct mtk_clk_pll*,int *,int *,unsigned long,unsigned long) ;
 int mtk_pll_set_rate_regs (struct mtk_clk_pll*,int ,int ) ;
 struct mtk_clk_pll* to_mtk_clk_pll (struct clk_hw*) ;

__attribute__((used)) static int mtk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct mtk_clk_pll *pll = to_mtk_clk_pll(hw);
 u32 pcw = 0;
 u32 postdiv;

 mtk_pll_calc_values(pll, &pcw, &postdiv, rate, parent_rate);
 mtk_pll_set_rate_regs(pll, pcw, postdiv);

 return 0;
}
