
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned int DIV_ROUND_UP (unsigned long,unsigned long) ;
 long EINVAL ;

__attribute__((used)) static long iproc_asiu_clk_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *parent_rate)
{
 unsigned int div;

 if (rate == 0 || *parent_rate == 0)
  return -EINVAL;

 if (rate == *parent_rate)
  return *parent_rate;

 div = DIV_ROUND_UP(*parent_rate, rate);
 if (div < 2)
  return *parent_rate;

 return *parent_rate / div;
}
