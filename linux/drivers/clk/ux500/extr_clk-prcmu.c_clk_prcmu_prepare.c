
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_prcmu {int is_prepared; int cg_sel; } ;
struct clk_hw {int dummy; } ;


 int prcmu_request_clock (int ,int) ;
 struct clk_prcmu* to_clk_prcmu (struct clk_hw*) ;

__attribute__((used)) static int clk_prcmu_prepare(struct clk_hw *hw)
{
 int ret;
 struct clk_prcmu *clk = to_clk_prcmu(hw);

 ret = prcmu_request_clock(clk->cg_sel, 1);
 if (!ret)
  clk->is_prepared = 1;

 return ret;
}
