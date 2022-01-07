
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct clk_sccg_pll_setup {int fout; } ;
struct clk_sccg_pll {int bypass2; int bypass1; int parent; struct clk_sccg_pll_setup setup; } ;
struct clk_rate_request {int rate; int best_parent_rate; struct clk_hw* best_parent_hw; void* min_rate; void* max_rate; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;


 int __clk_determine_rate (struct clk_hw*,struct clk_rate_request*) ;
 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,int) ;
 int clk_sccg_pll_find_setup (struct clk_sccg_pll_setup*,int ,void*,int) ;
 struct clk_sccg_pll* to_clk_sccg_pll (struct clk_hw*) ;

__attribute__((used)) static int __clk_sccg_pll_determine_rate(struct clk_hw *hw,
     struct clk_rate_request *req,
     uint64_t min,
     uint64_t max,
     uint64_t rate,
     int bypass)
{
 struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 struct clk_sccg_pll_setup *setup = &pll->setup;
 struct clk_hw *parent_hw = ((void*)0);
 int bypass_parent_index;
 int ret = -EINVAL;

 req->max_rate = max;
 req->min_rate = min;

 switch (bypass) {
 case 128:
  bypass_parent_index = pll->bypass2;
  break;
 case 129:
  bypass_parent_index = pll->bypass1;
  break;
 default:
  bypass_parent_index = pll->parent;
  break;
 }

 parent_hw = clk_hw_get_parent_by_index(hw, bypass_parent_index);
 ret = __clk_determine_rate(parent_hw, req);
 if (!ret) {
  ret = clk_sccg_pll_find_setup(setup, req->rate,
      rate, bypass);
 }

 req->best_parent_hw = parent_hw;
 req->best_parent_rate = req->rate;
 req->rate = setup->fout;

 return ret;
}
