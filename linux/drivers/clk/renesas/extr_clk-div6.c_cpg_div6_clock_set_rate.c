
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct div6_clock {unsigned int div; int reg; } ;
struct clk_hw {int dummy; } ;


 int CPG_DIV6_CKSTP ;
 int CPG_DIV6_DIV (int) ;
 int CPG_DIV6_DIV_MASK ;
 unsigned int cpg_div6_clock_calc_div (unsigned long,unsigned long) ;
 int readl (int ) ;
 struct div6_clock* to_div6_clock (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int cpg_div6_clock_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct div6_clock *clock = to_div6_clock(hw);
 unsigned int div = cpg_div6_clock_calc_div(rate, parent_rate);
 u32 val;

 clock->div = div;

 val = readl(clock->reg) & ~CPG_DIV6_DIV_MASK;

 if (!(val & CPG_DIV6_CKSTP))
  writel(val | CPG_DIV6_DIV(clock->div - 1), clock->reg);

 return 0;
}
