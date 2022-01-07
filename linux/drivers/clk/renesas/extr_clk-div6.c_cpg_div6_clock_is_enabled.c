
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct div6_clock {int reg; } ;
struct clk_hw {int dummy; } ;


 int CPG_DIV6_CKSTP ;
 int readl (int ) ;
 struct div6_clock* to_div6_clock (struct clk_hw*) ;

__attribute__((used)) static int cpg_div6_clock_is_enabled(struct clk_hw *hw)
{
 struct div6_clock *clock = to_div6_clock(hw);

 return !(readl(clock->reg) & CPG_DIV6_CKSTP);
}
