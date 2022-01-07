
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ prev; scalar_t__ next; } ;
struct clk {int (* init ) (struct clk*) ;TYPE_2__ node; TYPE_2__ sibling; TYPE_1__* parent; } ;
struct TYPE_3__ {int children; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clocks ;
 int clocks_mutex ;
 int list_add (TYPE_2__*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int root_clks ;
 int stub1 (struct clk*) ;

int clk_register(struct clk *clk)
{
 if (clk == ((void*)0) || IS_ERR(clk))
  return -EINVAL;




 if (clk->node.next || clk->node.prev)
  return 0;

 mutex_lock(&clocks_mutex);
 if (clk->parent)
  list_add(&clk->sibling, &clk->parent->children);
 else
  list_add(&clk->sibling, &root_clks);

 list_add(&clk->node, &clocks);
 if (clk->init)
  clk->init(clk);
 mutex_unlock(&clocks_mutex);

 return 0;
}
