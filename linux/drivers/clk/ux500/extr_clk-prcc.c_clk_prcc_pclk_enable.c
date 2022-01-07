
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_prcc {int cg_sel; int is_enabled; scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ PRCC_PCKEN ;
 scalar_t__ PRCC_PCKSR ;
 int cpu_relax () ;
 int readl (scalar_t__) ;
 struct clk_prcc* to_clk_prcc (struct clk_hw*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int clk_prcc_pclk_enable(struct clk_hw *hw)
{
 struct clk_prcc *clk = to_clk_prcc(hw);

 writel(clk->cg_sel, (clk->base + PRCC_PCKEN));
 while (!(readl(clk->base + PRCC_PCKSR) & clk->cg_sel))
  cpu_relax();

 clk->is_enabled = 1;
 return 0;
}
