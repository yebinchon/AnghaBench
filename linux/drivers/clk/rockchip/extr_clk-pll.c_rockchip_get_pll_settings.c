
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pll_rate_table {unsigned long rate; } ;
struct rockchip_clk_pll {int rate_count; struct rockchip_pll_rate_table* rate_table; } ;



__attribute__((used)) static const struct rockchip_pll_rate_table *rockchip_get_pll_settings(
       struct rockchip_clk_pll *pll, unsigned long rate)
{
 const struct rockchip_pll_rate_table *rate_table = pll->rate_table;
 int i;

 for (i = 0; i < pll->rate_count; i++) {
  if (rate == rate_table[i].rate)
   return &rate_table[i];
 }

 return ((void*)0);
}
