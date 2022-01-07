
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rpm {unsigned long rate; } ;
struct clk_hw {int dummy; } ;


 struct clk_rpm* to_clk_rpm (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_rpm_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_rpm *r = to_clk_rpm(hw);






 return r->rate;
}
