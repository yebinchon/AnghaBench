
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg; } ;
struct socfpga_pll {TYPE_1__ hw; } ;
struct clk_hw {int dummy; } ;


 unsigned long SOCFPGA_PLL_MDIV_MASK ;
 unsigned long SOCFPGA_PLL_MDIV_SHIFT ;
 unsigned long SOCFPGA_PLL_REFDIV_MASK ;
 unsigned long SOCFPGA_PLL_REFDIV_SHIFT ;
 unsigned long readl (int) ;
 struct socfpga_pll* to_socfpga_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pll_recalc_rate(struct clk_hw *hwclk,
      unsigned long parent_rate)
{
 struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
 unsigned long mdiv;
 unsigned long refdiv;
 unsigned long reg;
 unsigned long long vco_freq;


 reg = readl(socfpgaclk->hw.reg);
 refdiv = (reg & SOCFPGA_PLL_REFDIV_MASK) >> SOCFPGA_PLL_REFDIV_SHIFT;
 vco_freq = (unsigned long long)parent_rate / refdiv;


 reg = readl(socfpgaclk->hw.reg + 0x4);
 mdiv = (reg & SOCFPGA_PLL_MDIV_MASK) >> SOCFPGA_PLL_MDIV_SHIFT;
 vco_freq = (unsigned long long)vco_freq * (mdiv + 6);

 return (unsigned long)vco_freq;
}
