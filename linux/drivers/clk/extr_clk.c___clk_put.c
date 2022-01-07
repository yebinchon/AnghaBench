
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct module {int dummy; } ;
struct clk {int exclusive_count; scalar_t__ min_rate; scalar_t__ max_rate; TYPE_1__* core; int clks_node; } ;
struct TYPE_3__ {scalar_t__ req_rate; int ref; struct module* owner; int protect_count; } ;


 int IS_ERR (struct clk*) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int __clk_release ;
 int clk_core_rate_unprotect (TYPE_1__*) ;
 int clk_core_set_rate_nolock (TYPE_1__*,scalar_t__) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;
 int free_clk (struct clk*) ;
 int hlist_del (int *) ;
 int kref_put (int *,int ) ;
 int module_put (struct module*) ;

void __clk_put(struct clk *clk)
{
 struct module *owner;

 if (!clk || WARN_ON_ONCE(IS_ERR(clk)))
  return;

 clk_prepare_lock();






 if (WARN_ON(clk->exclusive_count)) {

  clk->core->protect_count -= (clk->exclusive_count - 1);
  clk_core_rate_unprotect(clk->core);
  clk->exclusive_count = 0;
 }

 hlist_del(&clk->clks_node);
 if (clk->min_rate > clk->core->req_rate ||
     clk->max_rate < clk->core->req_rate)
  clk_core_set_rate_nolock(clk->core, clk->core->req_rate);

 owner = clk->core->owner;
 kref_put(&clk->core->ref, __clk_release);

 clk_prepare_unlock();

 module_put(owner);

 free_clk(clk);
}
