
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {struct clk* parent; TYPE_1__* ops; } ;
struct TYPE_2__ {struct clk* (* get_parent ) (struct clk*) ;} ;


 int IS_ERR_OR_NULL (struct clk*) ;
 int clocks_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk* stub1 (struct clk*) ;
 scalar_t__ unlikely (int ) ;

struct clk *clk_get_parent(struct clk *clk)
{
 unsigned long flags;

 if (unlikely(IS_ERR_OR_NULL(clk)))
  return ((void*)0);

 if (!clk->ops || !clk->ops->get_parent)
  return clk->parent;

 spin_lock_irqsave(&clocks_lock, flags);
 clk->parent = clk->ops->get_parent(clk);
 spin_unlock_irqrestore(&clocks_lock, flags);

 return clk->parent;
}
