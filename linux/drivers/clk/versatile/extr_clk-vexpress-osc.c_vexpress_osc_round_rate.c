
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vexpress_osc {unsigned long rate_min; unsigned long rate_max; } ;
struct clk_hw {int dummy; } ;


 struct vexpress_osc* to_vexpress_osc (struct clk_hw*) ;

__attribute__((used)) static long vexpress_osc_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *parent_rate)
{
 struct vexpress_osc *osc = to_vexpress_osc(hw);

 if (osc->rate_min && rate < osc->rate_min)
  rate = osc->rate_min;

 if (osc->rate_max && rate > osc->rate_max)
  rate = osc->rate_max;

 return rate;
}
