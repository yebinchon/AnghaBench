
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_pll_data {int dummy; } ;


 scalar_t__ __pll_round_closest_mult (struct meson_clk_pll_data*) ;
 scalar_t__ abs (unsigned long) ;

__attribute__((used)) static bool meson_clk_pll_is_better(unsigned long rate,
        unsigned long best,
        unsigned long now,
        struct meson_clk_pll_data *pll)
{
 if (__pll_round_closest_mult(pll)) {

  if (abs(now - rate) < abs(best - rate))
   return 1;
 } else {

  if (now <= rate && best < now)
   return 1;
 }

 return 0;
}
