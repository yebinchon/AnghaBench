
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_clk_pll {scalar_t__ base_addr; } ;
struct clk_hw {int dummy; } ;


 int CON0_BASE_EN ;
 scalar_t__ REG_CON0 ;
 int readl (scalar_t__) ;
 struct mtk_clk_pll* to_mtk_clk_pll (struct clk_hw*) ;

__attribute__((used)) static int mtk_pll_is_prepared(struct clk_hw *hw)
{
 struct mtk_clk_pll *pll = to_mtk_clk_pll(hw);

 return (readl(pll->base_addr + REG_CON0) & CON0_BASE_EN) != 0;
}
