
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct meson_clk_pll_data {int dummy; } ;


 unsigned int DIV_ROUND_CLOSEST_ULL (unsigned int,unsigned long) ;
 scalar_t__ __pll_round_closest_mult (struct meson_clk_pll_data*) ;
 unsigned int div_u64 (unsigned int,unsigned long) ;

__attribute__((used)) static unsigned int meson_clk_get_pll_range_m(unsigned long rate,
           unsigned long parent_rate,
           unsigned int n,
           struct meson_clk_pll_data *pll)
{
 u64 val = (u64)rate * n;

 if (__pll_round_closest_mult(pll))
  return DIV_ROUND_CLOSEST_ULL(val, parent_rate);

 return div_u64(val, parent_rate);
}
