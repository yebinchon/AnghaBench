
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {scalar_t__ usecount; struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable ) (struct clk*,int) ;} ;


 int local_clk_disable (struct clk*) ;
 int stub1 (struct clk*,int) ;

__attribute__((used)) static int local_clk_enable(struct clk *clk)
{
 int ret = 0;

 if (clk->parent)
  ret = local_clk_enable(clk->parent);

 if (ret)
  return ret;

 if ((clk->usecount == 0) && (clk->ops->enable))
  ret = clk->ops->enable(clk, 1);

 if (!ret)
  clk->usecount++;
 else if (clk->parent && clk->parent->ops->enable)
  local_clk_disable(clk->parent);

 return ret;
}
