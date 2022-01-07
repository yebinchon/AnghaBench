
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;



__attribute__((used)) static long clk_plldiv_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *parent_rate)
{
 unsigned long div;

 if (rate > *parent_rate)
  return *parent_rate;
 div = *parent_rate / 2;
 if (rate < div)
  return div;

 if (rate - div < *parent_rate - rate)
  return div;

 return *parent_rate;
}
