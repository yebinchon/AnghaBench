
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frac_entry {int num; unsigned long den; } ;
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; int best_parent_hw; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 unsigned long clk_hw_round_rate (int ,unsigned long) ;
 struct frac_entry* frac_table_pixel ;

__attribute__((used)) static int clk_pixel_determine_rate(struct clk_hw *hw,
        struct clk_rate_request *req)
{
 unsigned long request, src_rate;
 int delta = 100000;
 const struct frac_entry *frac = frac_table_pixel;

 for (; frac->num; frac++) {
  request = (req->rate * frac->den) / frac->num;

  src_rate = clk_hw_round_rate(req->best_parent_hw, request);
  if ((src_rate < (request - delta)) ||
   (src_rate > (request + delta)))
   continue;

  req->best_parent_rate = src_rate;
  req->rate = (src_rate * frac->num) / frac->den;
  return 0;
 }

 return -EINVAL;
}
