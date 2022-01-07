
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct meson_clk_dualdiv_param {scalar_t__ n1; } const meson_clk_dualdiv_param ;
struct meson_clk_dualdiv_data {struct meson_clk_dualdiv_param const* table; } ;


 unsigned long __dualdiv_param_to_rate (unsigned long,struct meson_clk_dualdiv_param const*) ;
 scalar_t__ abs (unsigned long) ;

__attribute__((used)) static const struct meson_clk_dualdiv_param *
__dualdiv_get_setting(unsigned long rate, unsigned long parent_rate,
        struct meson_clk_dualdiv_data *dualdiv)
{
 const struct meson_clk_dualdiv_param *table = dualdiv->table;
 unsigned long best = 0, now = 0;
 unsigned int i, best_i = 0;

 if (!table)
  return ((void*)0);

 for (i = 0; table[i].n1; i++) {
  now = __dualdiv_param_to_rate(parent_rate, &table[i]);


  if (now == rate) {
   return &table[i];
  } else if (abs(now - rate) < abs(best - rate)) {
   best = now;
   best_i = i;
  }
 }

 return (struct meson_clk_dualdiv_param *)&table[best_i];
}
