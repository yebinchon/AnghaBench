
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct div6_clock {int reg; } ;
struct clk_hw {int dummy; } ;


 int CPG_DIV6_CKSTP ;
 int CPG_DIV6_DIV_MASK ;
 int readl (int ) ;
 struct div6_clock* to_div6_clock (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static void cpg_div6_clock_disable(struct clk_hw *hw)
{
 struct div6_clock *clock = to_div6_clock(hw);
 u32 val;

 val = readl(clock->reg);
 val |= CPG_DIV6_CKSTP;






 if (!(val & CPG_DIV6_DIV_MASK))
  val |= CPG_DIV6_DIV_MASK;
 writel(val, clock->reg);
}
