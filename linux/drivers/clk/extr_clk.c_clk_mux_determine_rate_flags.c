
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; int * best_parent_hw; } ;
struct clk_hw {struct clk_core* core; } ;
struct clk_core {int flags; int num_parents; int * hw; struct clk_core* parent; } ;


 int CLK_SET_RATE_NO_REPARENT ;
 int CLK_SET_RATE_PARENT ;
 int EINVAL ;
 int __clk_determine_rate (int *,struct clk_rate_request*) ;
 struct clk_core* clk_core_get_parent_by_index (struct clk_core*,int) ;
 void* clk_core_get_rate_nolock (struct clk_core*) ;
 scalar_t__ mux_is_better_rate (unsigned long,unsigned long,unsigned long,unsigned long) ;

int clk_mux_determine_rate_flags(struct clk_hw *hw,
     struct clk_rate_request *req,
     unsigned long flags)
{
 struct clk_core *core = hw->core, *parent, *best_parent = ((void*)0);
 int i, num_parents, ret;
 unsigned long best = 0;
 struct clk_rate_request parent_req = *req;


 if (core->flags & CLK_SET_RATE_NO_REPARENT) {
  parent = core->parent;
  if (core->flags & CLK_SET_RATE_PARENT) {
   ret = __clk_determine_rate(parent ? parent->hw : ((void*)0),
         &parent_req);
   if (ret)
    return ret;

   best = parent_req.rate;
  } else if (parent) {
   best = clk_core_get_rate_nolock(parent);
  } else {
   best = clk_core_get_rate_nolock(core);
  }

  goto out;
 }


 num_parents = core->num_parents;
 for (i = 0; i < num_parents; i++) {
  parent = clk_core_get_parent_by_index(core, i);
  if (!parent)
   continue;

  if (core->flags & CLK_SET_RATE_PARENT) {
   parent_req = *req;
   ret = __clk_determine_rate(parent->hw, &parent_req);
   if (ret)
    continue;
  } else {
   parent_req.rate = clk_core_get_rate_nolock(parent);
  }

  if (mux_is_better_rate(req->rate, parent_req.rate,
           best, flags)) {
   best_parent = parent;
   best = parent_req.rate;
  }
 }

 if (!best_parent)
  return -EINVAL;

out:
 if (best_parent)
  req->best_parent_hw = best_parent->hw;
 req->best_parent_rate = best;
 req->rate = best;

 return 0;
}
