
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int clks; } ;
struct clk {int clks_node; } ;


 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;
 int hlist_add_head (int *,int *) ;

__attribute__((used)) static void clk_core_link_consumer(struct clk_core *core, struct clk *clk)
{
 clk_prepare_lock();
 hlist_add_head(&clk->clks_node, &core->clks);
 clk_prepare_unlock();
}
