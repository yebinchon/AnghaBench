
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcon_ch1_clk {int reg; } ;
struct clk_hw {int dummy; } ;


 int TCON_CH1_SCLK1_GATE_BIT ;
 int TCON_CH1_SCLK2_GATE_BIT ;
 struct tcon_ch1_clk* hw_to_tclk (struct clk_hw*) ;
 int readl (int ) ;

__attribute__((used)) static int tcon_ch1_is_enabled(struct clk_hw *hw)
{
 struct tcon_ch1_clk *tclk = hw_to_tclk(hw);
 u32 reg;

 reg = readl(tclk->reg);
 return reg & (TCON_CH1_SCLK2_GATE_BIT | TCON_CH1_SCLK1_GATE_BIT);
}
