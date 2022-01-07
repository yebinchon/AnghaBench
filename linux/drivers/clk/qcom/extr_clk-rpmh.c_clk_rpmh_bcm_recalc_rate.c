
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rpmh {unsigned long aggr_state; unsigned long unit; } ;
struct clk_hw {int dummy; } ;


 struct clk_rpmh* to_clk_rpmh (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_rpmh_bcm_recalc_rate(struct clk_hw *hw,
     unsigned long prate)
{
 struct clk_rpmh *c = to_clk_rpmh(hw);

 return c->aggr_state * c->unit;
}
