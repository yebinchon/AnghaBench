
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int reg; } ;
struct socfpga_pll {TYPE_1__ hw; } ;
struct clk_hw {int dummy; } ;


 int SWCTRLBTCLKSEL_MASK ;
 int SWCTRLBTCLKSEL_SHIFT ;
 int readl (int ) ;
 struct socfpga_pll* to_socfpga_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_boot_clk_recalc_rate(struct clk_hw *hwclk,
      unsigned long parent_rate)
{
 struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
 u32 div = 1;

 div = ((readl(socfpgaclk->hw.reg) &
  SWCTRLBTCLKSEL_MASK) >>
  SWCTRLBTCLKSEL_SHIFT);
 div += 1;
 return parent_rate /= div;
}
