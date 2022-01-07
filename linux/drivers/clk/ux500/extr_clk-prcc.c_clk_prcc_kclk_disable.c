
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_prcc {scalar_t__ is_enabled; scalar_t__ base; int cg_sel; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ PRCC_KCKDIS ;
 struct clk_prcc* to_clk_prcc (struct clk_hw*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void clk_prcc_kclk_disable(struct clk_hw *hw)
{
 struct clk_prcc *clk = to_clk_prcc(hw);

 writel(clk->cg_sel, (clk->base + PRCC_KCKDIS));
 clk->is_enabled = 0;
}
