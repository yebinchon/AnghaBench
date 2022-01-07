
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rpmh {unsigned long div; } ;
struct clk_hw {int dummy; } ;


 struct clk_rpmh* to_clk_rpmh (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_rpmh_recalc_rate(struct clk_hw *hw,
     unsigned long prate)
{
 struct clk_rpmh *r = to_clk_rpmh(hw);




 return prate / r->div;
}
