
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ reg; } ;
struct socfpga_periph_clk {int bypass_shift; TYPE_1__ hw; scalar_t__ bypass_reg; } ;
struct clk_hw {int dummy; } ;


 int CLK_MGR_FREE_MASK ;
 int CLK_MGR_FREE_SHIFT ;
 int readl (scalar_t__) ;
 struct socfpga_periph_clk* to_periph_clk (struct clk_hw*) ;

__attribute__((used)) static u8 clk_periclk_get_parent(struct clk_hw *hwclk)
{
 struct socfpga_periph_clk *socfpgaclk = to_periph_clk(hwclk);
 u32 clk_src, mask;
 u8 parent;

 if (socfpgaclk->bypass_reg) {
  mask = (0x1 << socfpgaclk->bypass_shift);
  parent = ((readl(socfpgaclk->bypass_reg) & mask) >>
      socfpgaclk->bypass_shift);
 } else {
  clk_src = readl(socfpgaclk->hw.reg);
  parent = (clk_src >> CLK_MGR_FREE_SHIFT) &
   CLK_MGR_FREE_MASK;
 }
 return parent;
}
