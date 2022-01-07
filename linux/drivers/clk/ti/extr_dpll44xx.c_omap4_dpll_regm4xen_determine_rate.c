
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpll_data {int modes; int clk_ref; int clk_bypass; } ;
struct clk_rate_request {scalar_t__ rate; scalar_t__ best_parent_rate; int best_parent_hw; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;


 int DPLL_LOW_POWER_BYPASS ;
 int EINVAL ;
 scalar_t__ clk_hw_get_rate (int ) ;
 scalar_t__ omap4_dpll_regm4xen_round_rate (struct clk_hw*,scalar_t__,scalar_t__*) ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

int omap4_dpll_regm4xen_determine_rate(struct clk_hw *hw,
           struct clk_rate_request *req)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 struct dpll_data *dd;

 if (!req->rate)
  return -EINVAL;

 dd = clk->dpll_data;
 if (!dd)
  return -EINVAL;

 if (clk_hw_get_rate(dd->clk_bypass) == req->rate &&
     (dd->modes & (1 << DPLL_LOW_POWER_BYPASS))) {
  req->best_parent_hw = dd->clk_bypass;
 } else {
  req->rate = omap4_dpll_regm4xen_round_rate(hw, req->rate,
      &req->best_parent_rate);
  req->best_parent_hw = dd->clk_ref;
 }

 req->best_parent_rate = req->rate;

 return 0;
}
