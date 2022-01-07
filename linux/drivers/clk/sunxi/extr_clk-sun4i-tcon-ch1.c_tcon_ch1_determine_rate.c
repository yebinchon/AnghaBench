
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;


 long EINVAL ;
 int clk_hw_get_num_parents (struct clk_hw*) ;
 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,int) ;
 unsigned long clk_hw_get_rate (struct clk_hw*) ;
 unsigned long tcon_ch1_calc_divider (unsigned long,unsigned long,int *,int *) ;

__attribute__((used)) static int tcon_ch1_determine_rate(struct clk_hw *hw,
       struct clk_rate_request *req)
{
 long best_rate = -EINVAL;
 int i;

 for (i = 0; i < clk_hw_get_num_parents(hw); i++) {
  unsigned long parent_rate;
  unsigned long tmp_rate;
  struct clk_hw *parent;

  parent = clk_hw_get_parent_by_index(hw, i);
  if (!parent)
   continue;

  parent_rate = clk_hw_get_rate(parent);

  tmp_rate = tcon_ch1_calc_divider(req->rate, parent_rate,
       ((void*)0), ((void*)0));

  if (best_rate < 0 ||
      (req->rate - tmp_rate) < (req->rate - best_rate)) {
   best_rate = tmp_rate;
   req->best_parent_rate = parent_rate;
   req->best_parent_hw = parent;
  }
 }

 if (best_rate < 0)
  return best_rate;

 req->rate = best_rate;
 return 0;
}
