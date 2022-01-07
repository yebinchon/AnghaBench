
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_pll_data {scalar_t__ table; scalar_t__ range; } ;


 int EINVAL ;
 int meson_clk_get_pll_range_index (unsigned long,unsigned long,unsigned int,unsigned int*,unsigned int*,struct meson_clk_pll_data*) ;
 int meson_clk_get_pll_table_index (unsigned int,unsigned int*,unsigned int*,struct meson_clk_pll_data*) ;

__attribute__((used)) static int meson_clk_get_pll_get_index(unsigned long rate,
           unsigned long parent_rate,
           unsigned int index,
           unsigned int *m,
           unsigned int *n,
           struct meson_clk_pll_data *pll)
{
 if (pll->range)
  return meson_clk_get_pll_range_index(rate, parent_rate,
           index, m, n, pll);
 else if (pll->table)
  return meson_clk_get_pll_table_index(index, m, n, pll);

 return -EINVAL;
}
