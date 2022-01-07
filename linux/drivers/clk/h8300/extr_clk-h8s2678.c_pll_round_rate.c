
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned long MAX_FREQ ;
 unsigned long MIN_FREQ ;
 long abs (unsigned long) ;

__attribute__((used)) static long pll_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 int i, m = -1;
 long offset[3];

 if (rate > MAX_FREQ)
  rate = MAX_FREQ;
 if (rate < MIN_FREQ)
  rate = MIN_FREQ;

 for (i = 0; i < 3; i++)
  offset[i] = abs(rate - (*prate * (1 << i)));
 for (i = 0; i < 3; i++)
  if (m < 0)
   m = i;
  else
   m = (offset[i] < offset[m])?i:m;

 return *prate * (1 << m);
}
