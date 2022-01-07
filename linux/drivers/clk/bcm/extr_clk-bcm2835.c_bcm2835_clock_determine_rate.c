
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int bcm2835_clk_is_pllc (struct clk_hw*) ;
 unsigned long bcm2835_clock_choose_div_and_prate (struct clk_hw*,size_t,unsigned long,int *,unsigned long*,unsigned long*) ;
 size_t clk_hw_get_num_parents (struct clk_hw*) ;
 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,size_t) ;

__attribute__((used)) static int bcm2835_clock_determine_rate(struct clk_hw *hw,
     struct clk_rate_request *req)
{
 struct clk_hw *parent, *best_parent = ((void*)0);
 bool current_parent_is_pllc;
 unsigned long rate, best_rate = 0;
 unsigned long prate, best_prate = 0;
 unsigned long avgrate, best_avgrate = 0;
 size_t i;
 u32 div;

 current_parent_is_pllc = bcm2835_clk_is_pllc(clk_hw_get_parent(hw));




 for (i = 0; i < clk_hw_get_num_parents(hw); ++i) {
  parent = clk_hw_get_parent_by_index(hw, i);
  if (!parent)
   continue;
  if (bcm2835_clk_is_pllc(parent) && !current_parent_is_pllc)
   continue;

  rate = bcm2835_clock_choose_div_and_prate(hw, i, req->rate,
         &div, &prate,
         &avgrate);
  if (rate > best_rate && rate <= req->rate) {
   best_parent = parent;
   best_prate = prate;
   best_rate = rate;
   best_avgrate = avgrate;
  }
 }

 if (!best_parent)
  return -EINVAL;

 req->best_parent_hw = best_parent;
 req->best_parent_rate = best_prate;

 req->rate = best_avgrate;

 return 0;
}
