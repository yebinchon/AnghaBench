
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_adpll_data {struct ti_adpll_clock* clocks; } ;
struct ti_adpll_clock {int clk; int (* unregister ) (int ) ;scalar_t__ cl; } ;


 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int TI_ADPLL_M3 ;
 int clkdev_drop (scalar_t__) ;
 int stub1 (int ) ;

__attribute__((used)) static void ti_adpll_free_resources(struct ti_adpll_data *d)
{
 int i;

 for (i = TI_ADPLL_M3; i >= 0; i--) {
  struct ti_adpll_clock *ac = &d->clocks[i];

  if (!ac || IS_ERR_OR_NULL(ac->clk))
   continue;
  if (ac->cl)
   clkdev_drop(ac->cl);
  if (ac->unregister)
   ac->unregister(ac->clk);
 }
}
