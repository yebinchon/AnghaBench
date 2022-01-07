
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* recalc ) (struct clk*) ;int rate; int children; struct clk* parent; int childnode; int usecount; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 scalar_t__ WARN_ON (int ) ;
 int clockfw_lock ;
 int clocks_mutex ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int propagate_rate (struct clk*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct clk*) ;

int clk_set_parent(struct clk *clk, struct clk *parent)
{
 unsigned long flags;

 if (clk == ((void*)0) || IS_ERR(clk))
  return -EINVAL;


 if (WARN_ON(clk->usecount))
  return -EINVAL;

 mutex_lock(&clocks_mutex);
 clk->parent = parent;
 list_del_init(&clk->childnode);
 list_add(&clk->childnode, &clk->parent->children);
 mutex_unlock(&clocks_mutex);

 spin_lock_irqsave(&clockfw_lock, flags);
 if (clk->recalc)
  clk->rate = clk->recalc(clk);
 propagate_rate(clk);
 spin_unlock_irqrestore(&clockfw_lock, flags);

 return 0;
}
