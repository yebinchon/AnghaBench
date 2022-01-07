
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {int best_parent_rate; int * best_parent_hw; } ;
struct clk_core {int rate; int * hw; struct clk_core* parent; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static void clk_core_init_rate_req(struct clk_core * const core,
       struct clk_rate_request *req)
{
 struct clk_core *parent;

 if (WARN_ON(!core || !req))
  return;

 parent = core->parent;
 if (parent) {
  req->best_parent_hw = parent->hw;
  req->best_parent_rate = parent->rate;
 } else {
  req->best_parent_hw = ((void*)0);
  req->best_parent_rate = 0;
 }
}
