
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_pll_ctrl {int flags; } ;
struct iproc_pll {struct iproc_pll_ctrl* ctrl; } ;
struct iproc_clk {struct iproc_pll* pll; } ;
struct clk_hw {int dummy; } ;


 int IPROC_CLK_AON ;
 int __pll_disable (struct iproc_pll*) ;
 struct iproc_clk* to_iproc_clk (struct clk_hw*) ;

__attribute__((used)) static void iproc_pll_disable(struct clk_hw *hw)
{
 struct iproc_clk *clk = to_iproc_clk(hw);
 struct iproc_pll *pll = clk->pll;
 const struct iproc_pll_ctrl *ctrl = pll->ctrl;

 if (ctrl->flags & IPROC_CLK_AON)
  return;

 __pll_disable(pll);
}
