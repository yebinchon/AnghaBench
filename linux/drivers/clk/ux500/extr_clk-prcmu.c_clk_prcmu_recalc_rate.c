
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_prcmu {int cg_sel; } ;
struct clk_hw {int dummy; } ;


 unsigned long prcmu_clock_rate (int ) ;
 struct clk_prcmu* to_clk_prcmu (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_prcmu_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct clk_prcmu *clk = to_clk_prcmu(hw);
 return prcmu_clock_rate(clk->cg_sel);
}
