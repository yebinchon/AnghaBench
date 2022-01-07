
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; scalar_t__ num_parents; } ;
struct kona_clk {TYPE_1__ init_data; } ;
struct clk_rate_request {long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;


 int BUG_ON (int) ;
 int CLK_SET_RATE_NO_REPARENT ;
 int WARN_ON_ONCE (int) ;
 unsigned long abs (unsigned long) ;
 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,int) ;
 unsigned long clk_hw_get_rate (struct clk_hw*) ;
 void* kona_peri_clk_round_rate (struct clk_hw*,long,unsigned long*) ;
 struct kona_clk* to_kona_clk (struct clk_hw*) ;

__attribute__((used)) static int kona_peri_clk_determine_rate(struct clk_hw *hw,
     struct clk_rate_request *req)
{
 struct kona_clk *bcm_clk = to_kona_clk(hw);
 struct clk_hw *current_parent;
 unsigned long parent_rate;
 unsigned long best_delta;
 unsigned long best_rate;
 u32 parent_count;
 long rate;
 u32 which;





 WARN_ON_ONCE(bcm_clk->init_data.flags & CLK_SET_RATE_NO_REPARENT);
 parent_count = (u32)bcm_clk->init_data.num_parents;
 if (parent_count < 2) {
  rate = kona_peri_clk_round_rate(hw, req->rate,
      &req->best_parent_rate);
  if (rate < 0)
   return rate;

  req->rate = rate;
  return 0;
 }


 current_parent = clk_hw_get_parent(hw);
 parent_rate = clk_hw_get_rate(current_parent);
 best_rate = kona_peri_clk_round_rate(hw, req->rate, &parent_rate);
 best_delta = abs(best_rate - req->rate);


 for (which = 0; which < parent_count; which++) {
  struct clk_hw *parent = clk_hw_get_parent_by_index(hw, which);
  unsigned long delta;
  unsigned long other_rate;

  BUG_ON(!parent);
  if (parent == current_parent)
   continue;


  parent_rate = clk_hw_get_rate(parent);
  other_rate = kona_peri_clk_round_rate(hw, req->rate,
            &parent_rate);
  delta = abs(other_rate - req->rate);
  if (delta < best_delta) {
   best_delta = delta;
   best_rate = other_rate;
   req->best_parent_hw = parent;
   req->best_parent_rate = parent_rate;
  }
 }

 req->rate = best_rate;
 return 0;
}
