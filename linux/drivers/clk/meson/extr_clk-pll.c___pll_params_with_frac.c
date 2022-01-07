
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct TYPE_2__ {int width; } ;
struct meson_clk_pll_data {int flags; TYPE_1__ frac; } ;


 int CLK_MESON_PLL_ROUND_CLOSEST ;
 unsigned int DIV_ROUND_CLOSEST_ULL (unsigned int,unsigned long) ;
 unsigned int div_u64 (unsigned int,unsigned long) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int __pll_params_with_frac(unsigned long rate,
        unsigned long parent_rate,
        unsigned int m,
        unsigned int n,
        struct meson_clk_pll_data *pll)
{
 unsigned int frac_max = (1 << pll->frac.width);
 u64 val = (u64)rate * n;


 if (rate < parent_rate * m / n)
  return 0;

 if (pll->flags & CLK_MESON_PLL_ROUND_CLOSEST)
  val = DIV_ROUND_CLOSEST_ULL(val * frac_max, parent_rate);
 else
  val = div_u64(val * frac_max, parent_rate);

 val -= m * frac_max;

 return min((unsigned int)val, (frac_max - 1));
}
