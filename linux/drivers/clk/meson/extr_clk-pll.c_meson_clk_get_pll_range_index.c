
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int width; } ;
struct TYPE_4__ {int width; } ;
struct meson_clk_pll_data {TYPE_3__ m; TYPE_2__* range; TYPE_1__ n; } ;
struct TYPE_5__ {unsigned long min; unsigned long max; } ;


 int EINVAL ;
 int ENODATA ;
 unsigned int meson_clk_get_pll_range_m (unsigned long,unsigned long,unsigned int,struct meson_clk_pll_data*) ;

__attribute__((used)) static int meson_clk_get_pll_range_index(unsigned long rate,
      unsigned long parent_rate,
      unsigned int index,
      unsigned int *m,
      unsigned int *n,
      struct meson_clk_pll_data *pll)
{
 *n = index + 1;


 if (*n >= (1 << pll->n.width))
  return -EINVAL;

 if (*n == 1) {

  if (rate <= pll->range->min * parent_rate) {
   *m = pll->range->min;
   return -ENODATA;
  } else if (rate >= pll->range->max * parent_rate) {
   *m = pll->range->max;
   return -ENODATA;
  }
 }

 *m = meson_clk_get_pll_range_m(rate, parent_rate, *n, pll);


 if (*m >= (1 << pll->m.width))
  return -EINVAL;

 return 0;
}
