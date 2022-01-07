
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int CLK_SET_RATE_PARENT ;
 int clk_hw_get_flags (struct clk_hw*) ;

__attribute__((used)) static long si5341_output_clk_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *parent_rate)
{
 unsigned long r;

 r = *parent_rate >> 1;


 if (r && !(r % rate))
  return (long)rate;

 if (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) {
  if (rate > 200000000) {

   r = 2;
  } else {

   r = (400000000u / rate) & ~1;
  }
  *parent_rate = r * rate;
 } else {

  r /= rate;
  rate = *parent_rate / (r << 1);
 }

 return rate;
}
