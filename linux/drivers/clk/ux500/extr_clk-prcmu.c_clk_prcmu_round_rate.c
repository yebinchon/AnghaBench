
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_prcmu {int cg_sel; } ;
struct clk_hw {int dummy; } ;


 long prcmu_round_clock_rate (int ,unsigned long) ;
 struct clk_prcmu* to_clk_prcmu (struct clk_hw*) ;

__attribute__((used)) static long clk_prcmu_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *parent_rate)
{
 struct clk_prcmu *clk = to_clk_prcmu(hw);
 return prcmu_round_clock_rate(clk->cg_sel, rate);
}
