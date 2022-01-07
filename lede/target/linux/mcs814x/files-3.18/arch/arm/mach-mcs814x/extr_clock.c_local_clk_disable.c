
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {scalar_t__ usecount; struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable ) (struct clk*,int ) ;} ;


 int WARN_ON (int) ;
 int stub1 (struct clk*,int ) ;

__attribute__((used)) static void local_clk_disable(struct clk *clk)
{
 WARN_ON(!clk->usecount);

 if (clk->usecount > 0) {
  clk->usecount--;

  if ((clk->usecount == 0) && (clk->ops->enable))
   clk->ops->enable(clk, 0);

  if (clk->parent)
   local_clk_disable(clk->parent);
 }
}
