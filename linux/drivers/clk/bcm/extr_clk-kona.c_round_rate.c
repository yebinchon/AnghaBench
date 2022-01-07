
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct ccu_data {int dummy; } ;
struct bcm_clk_div {int dummy; } ;


 int BUG_ON (int) ;
 unsigned long DIV_ROUND_CLOSEST_ULL (unsigned long,unsigned long) ;
 scalar_t__ LONG_MAX ;
 scalar_t__ divider_exists (struct bcm_clk_div*) ;
 int divider_is_fixed (struct bcm_clk_div*) ;
 unsigned long divider_read_scaled (struct ccu_data*,struct bcm_clk_div*) ;
 unsigned long scale_rate (struct bcm_clk_div*,unsigned long) ;
 unsigned long scaled_div_max (struct bcm_clk_div*) ;
 unsigned long scaled_div_min (struct bcm_clk_div*) ;

__attribute__((used)) static long round_rate(struct ccu_data *ccu, struct bcm_clk_div *div,
    struct bcm_clk_div *pre_div,
    unsigned long rate, unsigned long parent_rate,
    u64 *scaled_div)
{
 u64 scaled_parent_rate;
 u64 min_scaled_div;
 u64 max_scaled_div;
 u64 best_scaled_div;
 u64 result;

 BUG_ON(!divider_exists(div));
 BUG_ON(!rate);
 BUG_ON(parent_rate > (u64)LONG_MAX);
 if (divider_exists(pre_div)) {
  u64 scaled_rate;
  u64 scaled_pre_div;

  scaled_rate = scale_rate(pre_div, parent_rate);
  scaled_rate = scale_rate(div, scaled_rate);
  scaled_pre_div = divider_read_scaled(ccu, pre_div);
  scaled_parent_rate = DIV_ROUND_CLOSEST_ULL(scaled_rate,
       scaled_pre_div);
 } else {
  scaled_parent_rate = scale_rate(div, parent_rate);
 }






 if (!divider_is_fixed(div)) {
  best_scaled_div = DIV_ROUND_CLOSEST_ULL(scaled_parent_rate,
       rate);
  min_scaled_div = scaled_div_min(div);
  max_scaled_div = scaled_div_max(div);
  if (best_scaled_div > max_scaled_div)
   best_scaled_div = max_scaled_div;
  else if (best_scaled_div < min_scaled_div)
   best_scaled_div = min_scaled_div;
 } else {
  best_scaled_div = divider_read_scaled(ccu, div);
 }


 result = DIV_ROUND_CLOSEST_ULL(scaled_parent_rate, best_scaled_div);

 if (scaled_div)
  *scaled_div = best_scaled_div;

 return (long)result;
}
