
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg; } ;
struct socfpga_pll {TYPE_1__ hw; } ;
struct clk_hw {int dummy; } ;


 int CLKMGR_BYPASS ;
 unsigned long MAINPLL_BYPASS ;
 unsigned long SOCFPGA_PLL_DIVF_MASK ;
 unsigned long SOCFPGA_PLL_DIVF_SHIFT ;
 unsigned long SOCFPGA_PLL_DIVQ_MASK ;
 unsigned long SOCFPGA_PLL_DIVQ_SHIFT ;
 int clk_mgr_base_addr ;
 int do_div (unsigned long long,int) ;
 unsigned long readl (int ) ;
 struct socfpga_pll* to_socfpga_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pll_recalc_rate(struct clk_hw *hwclk,
      unsigned long parent_rate)
{
 struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
 unsigned long divf, divq, reg;
 unsigned long long vco_freq;
 unsigned long bypass;

 reg = readl(socfpgaclk->hw.reg);
 bypass = readl(clk_mgr_base_addr + CLKMGR_BYPASS);
 if (bypass & MAINPLL_BYPASS)
  return parent_rate;

 divf = (reg & SOCFPGA_PLL_DIVF_MASK) >> SOCFPGA_PLL_DIVF_SHIFT;
 divq = (reg & SOCFPGA_PLL_DIVQ_MASK) >> SOCFPGA_PLL_DIVQ_SHIFT;
 vco_freq = (unsigned long long)parent_rate * (divf + 1);
 do_div(vco_freq, (1 + divq));
 return (unsigned long)vco_freq;
}
