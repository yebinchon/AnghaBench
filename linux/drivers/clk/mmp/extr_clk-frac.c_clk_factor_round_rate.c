
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmp_clk_factor {int ftbl_cnt; TYPE_2__* masks; TYPE_1__* ftbl; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {unsigned long factor; } ;
struct TYPE_3__ {unsigned long den; unsigned long num; } ;


 struct mmp_clk_factor* to_clk_factor (struct clk_hw*) ;

__attribute__((used)) static long clk_factor_round_rate(struct clk_hw *hw, unsigned long drate,
  unsigned long *prate)
{
 struct mmp_clk_factor *factor = to_clk_factor(hw);
 unsigned long rate = 0, prev_rate;
 int i;

 for (i = 0; i < factor->ftbl_cnt; i++) {
  prev_rate = rate;
  rate = (((*prate / 10000) * factor->ftbl[i].den) /
   (factor->ftbl[i].num * factor->masks->factor)) * 10000;
  if (rate > drate)
   break;
 }
 if ((i == 0) || (i == factor->ftbl_cnt)) {
  return rate;
 } else {
  if ((drate - prev_rate) > (rate - drate))
   return rate;
  else
   return prev_rate;
 }
}
