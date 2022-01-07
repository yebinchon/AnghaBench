
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_clk_pll_data {TYPE_1__* table; } ;
struct TYPE_2__ {unsigned int n; unsigned int m; } ;


 int EINVAL ;

__attribute__((used)) static int meson_clk_get_pll_table_index(unsigned int index,
      unsigned int *m,
      unsigned int *n,
      struct meson_clk_pll_data *pll)
{
 if (!pll->table[index].n)
  return -EINVAL;

 *m = pll->table[index].m;
 *n = pll->table[index].n;

 return 0;
}
