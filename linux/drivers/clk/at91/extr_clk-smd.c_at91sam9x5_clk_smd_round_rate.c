
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned long SMD_MAX_DIV ;

__attribute__((used)) static long at91sam9x5_clk_smd_round_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long *parent_rate)
{
 unsigned long div;
 unsigned long bestrate;
 unsigned long tmp;

 if (rate >= *parent_rate)
  return *parent_rate;

 div = *parent_rate / rate;
 if (div > SMD_MAX_DIV)
  return *parent_rate / (SMD_MAX_DIV + 1);

 bestrate = *parent_rate / div;
 tmp = *parent_rate / (div + 1);
 if (bestrate - rate > rate - tmp)
  bestrate = tmp;

 return bestrate;
}
