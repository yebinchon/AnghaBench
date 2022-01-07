
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {scalar_t__ usecount; int flags; struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable ) (struct clk*) ;} ;


 int CLOCK_NO_IDLE_PARENT ;
 scalar_t__ likely (struct clk*) ;
 int omap1_clk_allow_idle (struct clk*) ;
 int stub1 (struct clk*) ;

void omap1_clk_disable(struct clk *clk)
{
 if (clk->usecount > 0 && !(--clk->usecount)) {
  clk->ops->disable(clk);
  if (likely(clk->parent)) {
   omap1_clk_disable(clk->parent);
   if (clk->flags & CLOCK_NO_IDLE_PARENT)
    omap1_clk_allow_idle(clk->parent);
  }
 }
}
