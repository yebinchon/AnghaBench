
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct parent_map {int dummy; } ;
struct freq_tbl {unsigned long pre_div; unsigned long n; unsigned long freq; int m; int src; } ;
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;


 unsigned long CLK_SET_RATE_PARENT ;
 int EINVAL ;
 unsigned long clk_hw_get_flags (struct clk_hw*) ;
 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,int) ;
 unsigned long clk_hw_get_rate (struct clk_hw*) ;
 int do_div (unsigned long,int ) ;
 struct freq_tbl* qcom_find_freq (struct freq_tbl const*,unsigned long) ;
 int qcom_find_src_index (struct clk_hw*,struct parent_map const*,int ) ;

__attribute__((used)) static int _freq_tbl_determine_rate(struct clk_hw *hw, const struct freq_tbl *f,
  struct clk_rate_request *req,
  const struct parent_map *parent_map)
{
 unsigned long clk_flags, rate = req->rate;
 struct clk_hw *p;
 int index;

 f = qcom_find_freq(f, rate);
 if (!f)
  return -EINVAL;

 index = qcom_find_src_index(hw, parent_map, f->src);
 if (index < 0)
  return index;

 clk_flags = clk_hw_get_flags(hw);
 p = clk_hw_get_parent_by_index(hw, index);
 if (clk_flags & CLK_SET_RATE_PARENT) {
  rate = rate * f->pre_div;
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
