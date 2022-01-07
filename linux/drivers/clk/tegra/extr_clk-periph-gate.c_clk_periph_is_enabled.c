
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_periph_gate {int flags; } ;
struct clk_hw {int dummy; } ;


 int TEGRA_PERIPH_NO_RESET ;
 int periph_clk_to_bit (struct tegra_clk_periph_gate*) ;
 int read_enb (struct tegra_clk_periph_gate*) ;
 int read_rst (struct tegra_clk_periph_gate*) ;
 struct tegra_clk_periph_gate* to_clk_periph_gate (struct clk_hw*) ;

__attribute__((used)) static int clk_periph_is_enabled(struct clk_hw *hw)
{
 struct tegra_clk_periph_gate *gate = to_clk_periph_gate(hw);
 int state = 1;

 if (!(read_enb(gate) & periph_clk_to_bit(gate)))
  state = 0;

 if (!(gate->flags & TEGRA_PERIPH_NO_RESET))
  if (read_rst(gate) & periph_clk_to_bit(gate))
   state = 0;

 return state;
}
