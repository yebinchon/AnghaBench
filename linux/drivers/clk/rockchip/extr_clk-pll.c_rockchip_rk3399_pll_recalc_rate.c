
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rockchip_pll_rate_table {int fbdiv; scalar_t__ dsmpd; unsigned long frac; int postdiv2; int postdiv1; int refdiv; } ;
struct rockchip_clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 int do_div (int,int ) ;
 int rockchip_rk3399_pll_get_params (struct rockchip_clk_pll*,struct rockchip_pll_rate_table*) ;
 struct rockchip_clk_pll* to_rockchip_clk_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long rockchip_rk3399_pll_recalc_rate(struct clk_hw *hw,
           unsigned long prate)
{
 struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
 struct rockchip_pll_rate_table cur;
 u64 rate64 = prate;

 rockchip_rk3399_pll_get_params(pll, &cur);

 rate64 *= cur.fbdiv;
 do_div(rate64, cur.refdiv);

 if (cur.dsmpd == 0) {

  u64 frac_rate64 = prate * cur.frac;

  do_div(frac_rate64, cur.refdiv);
  rate64 += frac_rate64 >> 24;
 }

 do_div(rate64, cur.postdiv1);
 do_div(rate64, cur.postdiv2);

 return (unsigned long)rate64;
}
