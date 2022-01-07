
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct clk {TYPE_3__* core; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct TYPE_5__ {TYPE_1__* hw; } ;
struct TYPE_4__ {struct clk* clk; } ;


 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;

struct clk *clk_get_parent(struct clk *clk)
{
 struct clk *parent;

 if (!clk)
  return ((void*)0);

 clk_prepare_lock();

 parent = !clk->core->parent ? ((void*)0) : clk->core->parent->hw->clk;
 clk_prepare_unlock();

 return parent;
}
