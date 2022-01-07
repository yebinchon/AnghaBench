
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_frac_div {int flags; int frac_width; int width; } ;


 int div_frac_get (unsigned long,unsigned long,int ,int ,int ) ;

__attribute__((used)) static int get_div(struct tegra_clk_frac_div *divider, unsigned long rate,
     unsigned long parent_rate)
{
 int div;

 div = div_frac_get(rate, parent_rate, divider->width,
      divider->frac_width, divider->flags);

 if (div < 0)
  return 0;

 return div;
}
