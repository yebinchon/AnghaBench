
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct TYPE_2__ {int width; } ;
struct meson_clk_pll_data {TYPE_1__ frac; } ;


 unsigned long DIV_ROUND_UP_ULL (unsigned int,unsigned int) ;
 scalar_t__ MESON_PARM_APPLICABLE (TYPE_1__*) ;

__attribute__((used)) static unsigned long __pll_params_to_rate(unsigned long parent_rate,
       unsigned int m, unsigned int n,
       unsigned int frac,
       struct meson_clk_pll_data *pll)
{
 u64 rate = (u64)parent_rate * m;

 if (frac && MESON_PARM_APPLICABLE(&pll->frac)) {
  u64 frac_rate = (u64)parent_rate * frac;

  rate += DIV_ROUND_UP_ULL(frac_rate,
      (1 << pll->frac.width));
 }

 return DIV_ROUND_UP_ULL(rate, n);
}
