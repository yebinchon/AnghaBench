
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct samsung_clk_pll {int con_reg; int lock_offs; int enable_offs; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int cpu_relax () ;
 int readl_relaxed (int ) ;
 struct samsung_clk_pll* to_clk_pll (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int samsung_pll3xxx_enable(struct clk_hw *hw)
{
 struct samsung_clk_pll *pll = to_clk_pll(hw);
 u32 tmp;

 tmp = readl_relaxed(pll->con_reg);
 tmp |= BIT(pll->enable_offs);
 writel_relaxed(tmp, pll->con_reg);


 do {
  cpu_relax();
  tmp = readl_relaxed(pll->con_reg);
 } while (!(tmp & BIT(pll->lock_offs)));

 return 0;
}
