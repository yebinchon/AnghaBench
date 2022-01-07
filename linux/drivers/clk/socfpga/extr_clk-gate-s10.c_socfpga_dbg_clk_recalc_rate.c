
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socfpga_gate_clk {int shift; scalar_t__ width; int div_reg; } ;
struct clk_hw {int dummy; } ;


 int GENMASK (scalar_t__,int ) ;
 int readl (int ) ;
 struct socfpga_gate_clk* to_socfpga_gate_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long socfpga_dbg_clk_recalc_rate(struct clk_hw *hwclk,
        unsigned long parent_rate)
{
 struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hwclk);
 u32 div = 1, val;

 val = readl(socfpgaclk->div_reg) >> socfpgaclk->shift;
 val &= GENMASK(socfpgaclk->width - 1, 0);
 div = (1 << val);
 div = div ? 4 : 1;

 return parent_rate / div;
}
