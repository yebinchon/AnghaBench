
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun9i_a80_cpus_clk {int reg; } ;
struct clk_hw {int dummy; } ;


 int SUN9I_CPUS_DIV_GET (int ) ;
 scalar_t__ SUN9I_CPUS_MUX_GET_PARENT (int ) ;
 scalar_t__ SUN9I_CPUS_MUX_PARENT_PLL4 ;
 int SUN9I_CPUS_PLL4_DIV_GET (int ) ;
 int readl (int ) ;
 struct sun9i_a80_cpus_clk* to_sun9i_a80_cpus_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long sun9i_a80_cpus_clk_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 struct sun9i_a80_cpus_clk *cpus = to_sun9i_a80_cpus_clk(hw);
 unsigned long rate;
 u32 reg;


 reg = readl(cpus->reg);


 if (SUN9I_CPUS_MUX_GET_PARENT(reg) == SUN9I_CPUS_MUX_PARENT_PLL4)
  parent_rate /= SUN9I_CPUS_PLL4_DIV_GET(reg) + 1;


 rate = parent_rate / (SUN9I_CPUS_DIV_GET(reg) + 1);

 return rate;
}
