
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw_omap {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 struct clk_hw* __clk_get_hw (struct clk*) ;
 int _omap2_clk_deny_idle (struct clk_hw_omap*) ;
 scalar_t__ omap2_clk_is_hw_omap (struct clk_hw*) ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

int omap2_clk_deny_idle(struct clk *clk)
{
 struct clk_hw *hw = __clk_get_hw(clk);

 if (omap2_clk_is_hw_omap(hw)) {
  struct clk_hw_omap *c = to_clk_hw_omap(hw);

  return _omap2_clk_deny_idle(c);
 }

 return -EINVAL;
}
