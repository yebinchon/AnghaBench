
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int reg; } ;
struct socfpga_pll {TYPE_1__ hw; } ;
struct clk_hw {int dummy; } ;


 int SWCTRLBTCLKSEL_MASK ;
 int SWCTRLBTCLKSEL_SHIFT ;
 int readl (int ) ;
 struct socfpga_pll* to_socfpga_clk (struct clk_hw*) ;

__attribute__((used)) static u8 clk_boot_get_parent(struct clk_hw *hwclk)
{
 struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
 u32 pll_src;

 pll_src = readl(socfpgaclk->hw.reg);
 return (pll_src >> SWCTRLBTCLKSEL_SHIFT) &
  SWCTRLBTCLKSEL_MASK;
}
