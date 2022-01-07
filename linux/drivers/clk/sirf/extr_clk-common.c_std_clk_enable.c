
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_std {int enable_bit; } ;
struct clk_hw {int dummy; } ;
typedef int reg ;


 int BIT (int) ;
 int BUG_ON (int) ;
 int SIRFSOC_CLKC_CLK_EN0 ;
 int clkc_readl (int) ;
 int clkc_writel (int,int) ;
 struct clk_std* to_stdclk (struct clk_hw*) ;

__attribute__((used)) static int std_clk_enable(struct clk_hw *hw)
{
 u32 val, reg;
 int bit;
 struct clk_std *clk = to_stdclk(hw);

 BUG_ON(clk->enable_bit < 0 || clk->enable_bit > 63);

 bit = clk->enable_bit % 32;
 reg = clk->enable_bit / 32;
 reg = SIRFSOC_CLKC_CLK_EN0 + reg * sizeof(reg);

 val = clkc_readl(reg) | BIT(bit);
 clkc_writel(val, reg);
 return 0;
}
