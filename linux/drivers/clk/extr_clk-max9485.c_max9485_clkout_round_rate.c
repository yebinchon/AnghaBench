
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max9485_rate {unsigned long out; } ;
struct clk_hw {int dummy; } ;


 struct max9485_rate* max9485_rates ;

__attribute__((used)) static long max9485_clkout_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *parent_rate)
{
 const struct max9485_rate *curr, *prev = ((void*)0);

 for (curr = max9485_rates; curr->out != 0; curr++) {

  if (curr->out == rate)
   return rate;





  if (curr->out > rate) {
   unsigned int mid;





   if (!prev)
    return curr->out;





   mid = prev->out + ((curr->out - prev->out) / 2);

   return (mid > rate) ? prev->out : curr->out;
  }

  prev = curr;
 }


 return prev->out;
}
