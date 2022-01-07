
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int reg; } ;
struct socfpga_pll {TYPE_1__ hw; } ;
struct clk_hw {int dummy; } ;


 int SOCFPGA_PLL_RESET_MASK ;
 int readl (int ) ;
 struct socfpga_pll* to_socfpga_clk (struct clk_hw*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int clk_pll_prepare(struct clk_hw *hwclk)
{
 struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
 u32 reg;


 reg = readl(socfpgaclk->hw.reg);
 reg |= SOCFPGA_PLL_RESET_MASK;
 writel(reg, socfpgaclk->hw.reg);

 return 0;
}
