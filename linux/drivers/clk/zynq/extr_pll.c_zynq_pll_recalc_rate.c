
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct zynq_pll {int pll_ctrl; } ;
struct clk_hw {int dummy; } ;


 unsigned long PLLCTRL_FBDIV_MASK ;
 unsigned long PLLCTRL_FBDIV_SHIFT ;
 unsigned long readl (int ) ;
 struct zynq_pll* to_zynq_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long zynq_pll_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct zynq_pll *clk = to_zynq_pll(hw);
 u32 fbdiv;





 fbdiv = (readl(clk->pll_ctrl) & PLLCTRL_FBDIV_MASK) >>
   PLLCTRL_FBDIV_SHIFT;

 return parent_rate * fbdiv;
}
