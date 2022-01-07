
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_pll_data {int dummy; } ;


 int EINVAL ;
 unsigned long __pll_params_to_rate (unsigned long,unsigned int,unsigned int,int ,struct meson_clk_pll_data*) ;
 int meson_clk_get_pll_get_index (unsigned long,unsigned long,unsigned int,unsigned int*,unsigned int*,struct meson_clk_pll_data*) ;
 scalar_t__ meson_clk_pll_is_better (unsigned long,unsigned long,unsigned long,struct meson_clk_pll_data*) ;

__attribute__((used)) static int meson_clk_get_pll_settings(unsigned long rate,
          unsigned long parent_rate,
          unsigned int *best_m,
          unsigned int *best_n,
          struct meson_clk_pll_data *pll)
{
 unsigned long best = 0, now = 0;
 unsigned int i, m, n;
 int ret;

 for (i = 0, ret = 0; !ret; i++) {
  ret = meson_clk_get_pll_get_index(rate, parent_rate,
        i, &m, &n, pll);
  if (ret == -EINVAL)
   break;

  now = __pll_params_to_rate(parent_rate, m, n, 0, pll);
  if (meson_clk_pll_is_better(rate, best, now, pll)) {
   best = now;
   *best_m = m;
   *best_n = n;

   if (now == rate)
    break;
  }
 }

 return best ? 0 : -EINVAL;
}
