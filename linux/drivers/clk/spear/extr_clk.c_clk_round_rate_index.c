
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
typedef unsigned long (* clk_calc_rate ) (struct clk_hw*,unsigned long,int) ;



long clk_round_rate_index(struct clk_hw *hw, unsigned long drate,
  unsigned long parent_rate, clk_calc_rate calc_rate, u8 rtbl_cnt,
  int *index)
{
 unsigned long prev_rate, rate = 0;

 for (*index = 0; *index < rtbl_cnt; (*index)++) {
  prev_rate = rate;
  rate = calc_rate(hw, parent_rate, *index);
  if (drate < rate) {

   if (*index) {
    rate = prev_rate;
    (*index)--;
   }
   break;
  }
 }

 if ((*index) == rtbl_cnt)
  (*index)--;

 return rate;
}
