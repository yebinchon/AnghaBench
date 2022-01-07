
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct freq_tbl {unsigned long freq; int pre_div; unsigned long n; int m; int src; } ;
struct clk_rcg2 {int parent_map; } ;
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;
typedef enum freq_policy { ____Placeholder_freq_policy } freq_policy ;



 unsigned long CLK_SET_RATE_PARENT ;
 int EINVAL ;

 unsigned long clk_hw_get_flags (struct clk_hw*) ;
 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,int) ;
 unsigned long clk_hw_get_rate (struct clk_hw*) ;
 int do_div (unsigned long,int ) ;
 struct freq_tbl* qcom_find_freq (struct freq_tbl const*,unsigned long) ;
 struct freq_tbl* qcom_find_freq_floor (struct freq_tbl const*,unsigned long) ;
 int qcom_find_src_index (struct clk_hw*,int ,int ) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;

__attribute__((used)) static int _freq_tbl_determine_rate(struct clk_hw *hw, const struct freq_tbl *f,
        struct clk_rate_request *req,
        enum freq_policy policy)
{
 unsigned long clk_flags, rate = req->rate;
 struct clk_hw *p;
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);
 int index;

 switch (policy) {
 case 128:
  f = qcom_find_freq_floor(f, rate);
  break;
 case 129:
  f = qcom_find_freq(f, rate);
  break;
 default:
  return -EINVAL;
 };

 if (!f)
  return -EINVAL;

 index = qcom_find_src_index(hw, rcg->parent_map, f->src);
 if (index < 0)
  return index;

 clk_flags = clk_hw_get_flags(hw);
 p = clk_hw_get_parent_by_index(hw, index);
 if (clk_flags & CLK_SET_RATE_PARENT) {
  rate = f->freq;
  if (f->pre_div) {
   rate /= 2;
   rate *= f->pre_div + 1;
  }

  if (f->n) {
   u64 tmp = rate;
   tmp = tmp * f->n;
   do_div(tmp, f->m);
   rate = tmp;
  }
 } else {
  rate = clk_hw_get_rate(p);
 }
 req->best_parent_hw = p;
 req->best_parent_rate = rate;
 req->rate = f->freq;

 return 0;
}
