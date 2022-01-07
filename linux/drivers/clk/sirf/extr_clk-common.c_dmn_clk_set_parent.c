
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_dmn {int regofs; } ;


 int BIT (int) ;
 int EINVAL ;
 char* clk_hw_get_name (struct clk_hw*) ;
 int clkc_readl (int ) ;
 int clkc_writel (int,int ) ;
 int cpu_relax () ;
 scalar_t__ strcmp (char const*,char*) ;
 struct clk_dmn* to_dmnclk (struct clk_hw*) ;

__attribute__((used)) static int dmn_clk_set_parent(struct clk_hw *hw, u8 parent)
{
 struct clk_dmn *clk = to_dmnclk(hw);
 u32 cfg = clkc_readl(clk->regofs);
 const char *name = clk_hw_get_name(hw);


 if (strcmp(name, "io") == 0)
  return -EINVAL;

 cfg &= ~(BIT(3) - 1);
 clkc_writel(cfg | parent, clk->regofs);

 while (clkc_readl(clk->regofs) & BIT(3))
  cpu_relax();

 return 0;
}
