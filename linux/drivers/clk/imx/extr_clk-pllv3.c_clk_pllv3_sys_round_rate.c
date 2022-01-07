
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk_hw {int dummy; } ;



__attribute__((used)) static long clk_pllv3_sys_round_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long *prate)
{
 unsigned long parent_rate = *prate;
 unsigned long min_rate = parent_rate * 54 / 2;
 unsigned long max_rate = parent_rate * 108 / 2;
 u32 div;

 if (rate > max_rate)
  rate = max_rate;
 else if (rate < min_rate)
  rate = min_rate;
 div = rate * 2 / parent_rate;

 return parent_rate * div / 2;
}
