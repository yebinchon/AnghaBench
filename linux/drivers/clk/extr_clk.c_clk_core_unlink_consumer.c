
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int clks_node; } ;


 int hlist_del (int *) ;
 int lockdep_assert_held (int *) ;
 int prepare_lock ;

__attribute__((used)) static void clk_core_unlink_consumer(struct clk *clk)
{
 lockdep_assert_held(&prepare_lock);
 hlist_del(&clk->clks_node);
}
