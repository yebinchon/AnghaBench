
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ti_adpll_data {int dummy; } ;
struct ti_adpll_clkout_data {struct ti_adpll_data* adpll; } ;
struct clk_hw {int dummy; } ;


 int ti_adpll_clock_is_bypass (struct ti_adpll_data*) ;
 struct ti_adpll_clkout_data* to_clkout (struct clk_hw*) ;

__attribute__((used)) static u8 ti_adpll_clkout_get_parent(struct clk_hw *hw)
{
 struct ti_adpll_clkout_data *co = to_clkout(hw);
 struct ti_adpll_data *d = co->adpll;

 return ti_adpll_clock_is_bypass(d);
}
