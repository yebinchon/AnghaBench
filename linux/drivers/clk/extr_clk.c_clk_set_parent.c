
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int * core; scalar_t__ exclusive_count; } ;


 int clk_core_rate_protect (int *) ;
 int clk_core_rate_unprotect (int *) ;
 int clk_core_set_parent_nolock (int *,int *) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;

int clk_set_parent(struct clk *clk, struct clk *parent)
{
 int ret;

 if (!clk)
  return 0;

 clk_prepare_lock();

 if (clk->exclusive_count)
  clk_core_rate_unprotect(clk->core);

 ret = clk_core_set_parent_nolock(clk->core,
      parent ? parent->core : ((void*)0));

 if (clk->exclusive_count)
  clk_core_rate_protect(clk->core);

 clk_prepare_unlock();

 return ret;
}
