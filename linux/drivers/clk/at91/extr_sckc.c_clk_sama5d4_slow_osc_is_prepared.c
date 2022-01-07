
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_sama5d4_slow_osc {int prepared; } ;
struct clk_hw {int dummy; } ;


 struct clk_sama5d4_slow_osc* to_clk_sama5d4_slow_osc (struct clk_hw*) ;

__attribute__((used)) static int clk_sama5d4_slow_osc_is_prepared(struct clk_hw *hw)
{
 struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(hw);

 return osc->prepared;
}
