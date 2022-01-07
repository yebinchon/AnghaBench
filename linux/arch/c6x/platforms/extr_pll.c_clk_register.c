
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; scalar_t__ rate; scalar_t__ (* recalc ) (struct clk*) ;int childnode; int node; int name; } ;
struct TYPE_2__ {scalar_t__ rate; int children; int name; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 scalar_t__ WARN (int ,char*,int ,int ) ;
 int clocks ;
 int clocks_mutex ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ stub1 (struct clk*) ;

int clk_register(struct clk *clk)
{
 if (clk == ((void*)0) || IS_ERR(clk))
  return -EINVAL;

 if (WARN(clk->parent && !clk->parent->rate,
   "CLK: %s parent %s has no rate!\n",
   clk->name, clk->parent->name))
  return -EINVAL;

 mutex_lock(&clocks_mutex);
 list_add_tail(&clk->node, &clocks);
 if (clk->parent)
  list_add_tail(&clk->childnode, &clk->parent->children);
 mutex_unlock(&clocks_mutex);


 if (clk->rate)
  return 0;


 if (clk->recalc)
  clk->rate = clk->recalc(clk);


 else if (clk->parent)
  clk->rate = clk->parent->rate;

 return 0;
}
