
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rpmh {unsigned long aggr_state; unsigned long unit; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ clk_hw_is_prepared (struct clk_hw*) ;
 int clk_rpmh_bcm_send_cmd (struct clk_rpmh*,int) ;
 struct clk_rpmh* to_clk_rpmh (struct clk_hw*) ;

__attribute__((used)) static int clk_rpmh_bcm_set_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long parent_rate)
{
 struct clk_rpmh *c = to_clk_rpmh(hw);

 c->aggr_state = rate / c->unit;




 if (clk_hw_is_prepared(hw))
  clk_rpmh_bcm_send_cmd(c, 1);

 return 0;
}
