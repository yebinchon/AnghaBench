
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_pll14xx_rate_table {unsigned long rate; } ;
struct clk_pll14xx {int rate_count; struct imx_pll14xx_rate_table* rate_table; } ;



__attribute__((used)) static const struct imx_pll14xx_rate_table *imx_get_pll_settings(
  struct clk_pll14xx *pll, unsigned long rate)
{
 const struct imx_pll14xx_rate_table *rate_table = pll->rate_table;
 int i;

 for (i = 0; i < pll->rate_count; i++)
  if (rate == rate_table[i].rate)
   return &rate_table[i];

 return ((void*)0);
}
