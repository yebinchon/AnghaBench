
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ reg; } ;
struct socfpga_periph_clk {int fixed_div; int shift; TYPE_1__ hw; scalar_t__ width; scalar_t__ div_reg; } ;
struct clk_hw {int dummy; } ;


 int GENMASK (scalar_t__,int ) ;
 int readl (scalar_t__) ;
 struct socfpga_periph_clk* to_socfpga_periph_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_periclk_recalc_rate(struct clk_hw *hwclk,
          unsigned long parent_rate)
{
 struct socfpga_periph_clk *socfpgaclk = to_socfpga_periph_clk(hwclk);
 u32 div;

 if (socfpgaclk->fixed_div) {
  div = socfpgaclk->fixed_div;
 } else if (socfpgaclk->div_reg) {
  div = readl(socfpgaclk->div_reg) >> socfpgaclk->shift;
  div &= GENMASK(socfpgaclk->width - 1, 0);
  div += 1;
 } else {
  div = ((readl(socfpgaclk->hw.reg) & 0x7ff) + 1);
 }

 return parent_rate / div;
}
