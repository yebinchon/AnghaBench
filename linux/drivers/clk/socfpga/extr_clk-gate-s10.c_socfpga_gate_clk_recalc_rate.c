
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socfpga_gate_clk {int fixed_div; int shift; scalar_t__ width; scalar_t__ div_reg; } ;
struct clk_hw {int dummy; } ;


 int GENMASK (scalar_t__,int ) ;
 int readl (scalar_t__) ;
 struct socfpga_gate_clk* to_socfpga_gate_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long socfpga_gate_clk_recalc_rate(struct clk_hw *hwclk,
        unsigned long parent_rate)
{
 struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hwclk);
 u32 div = 1, val;

 if (socfpgaclk->fixed_div) {
  div = socfpgaclk->fixed_div;
 } else if (socfpgaclk->div_reg) {
  val = readl(socfpgaclk->div_reg) >> socfpgaclk->shift;
  val &= GENMASK(socfpgaclk->width - 1, 0);
  div = (1 << val);
 }
 return parent_rate / div;
}
