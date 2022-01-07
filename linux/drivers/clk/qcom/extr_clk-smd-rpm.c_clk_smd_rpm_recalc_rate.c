
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_smd_rpm {unsigned long rate; } ;
struct clk_hw {int dummy; } ;


 struct clk_smd_rpm* to_clk_smd_rpm (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_smd_rpm_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 struct clk_smd_rpm *r = to_clk_smd_rpm(hw);






 return r->rate;
}
