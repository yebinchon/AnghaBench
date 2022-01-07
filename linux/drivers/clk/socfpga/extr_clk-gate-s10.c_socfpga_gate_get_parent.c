
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct socfpga_gate_clk {int bypass_shift; scalar_t__ bypass_reg; } ;
struct clk_hw {int dummy; } ;


 int readl (scalar_t__) ;
 struct socfpga_gate_clk* to_socfpga_gate_clk (struct clk_hw*) ;

__attribute__((used)) static u8 socfpga_gate_get_parent(struct clk_hw *hwclk)
{
 struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hwclk);
 u32 mask;
 u8 parent = 0;

 if (socfpgaclk->bypass_reg) {
  mask = (0x1 << socfpgaclk->bypass_shift);
  parent = ((readl(socfpgaclk->bypass_reg) & mask) >>
     socfpgaclk->bypass_shift);
 }
 return parent;
}
