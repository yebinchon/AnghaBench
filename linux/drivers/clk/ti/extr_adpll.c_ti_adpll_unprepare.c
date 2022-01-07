
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_adpll_dco_data {int dummy; } ;
struct ti_adpll_data {int dummy; } ;
struct clk_hw {int dummy; } ;


 int ti_adpll_set_idle_bypass (struct ti_adpll_data*) ;
 struct ti_adpll_data* to_adpll (struct ti_adpll_dco_data*) ;
 struct ti_adpll_dco_data* to_dco (struct clk_hw*) ;

__attribute__((used)) static void ti_adpll_unprepare(struct clk_hw *hw)
{
 struct ti_adpll_dco_data *dco = to_dco(hw);
 struct ti_adpll_data *d = to_adpll(dco);

 ti_adpll_set_idle_bypass(d);
}
