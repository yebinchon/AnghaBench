
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hwmod {int opt_clks_cnt; TYPE_1__* opt_clks; int main_clk; } ;
struct omap_device {int dummy; } ;
struct TYPE_2__ {char* role; int clk; } ;


 int _add_clkdev (struct omap_device*,char*,int ) ;

__attribute__((used)) static void _add_hwmod_clocks_clkdev(struct omap_device *od,
         struct omap_hwmod *oh)
{
 int i;

 _add_clkdev(od, "fck", oh->main_clk);

 for (i = 0; i < oh->opt_clks_cnt; i++)
  _add_clkdev(od, oh->opt_clks[i].role, oh->opt_clks[i].clk);
}
