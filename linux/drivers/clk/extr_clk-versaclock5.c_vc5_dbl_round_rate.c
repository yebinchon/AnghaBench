
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 long EINVAL ;

__attribute__((used)) static long vc5_dbl_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *parent_rate)
{
 if ((*parent_rate == rate) || ((*parent_rate * 2) == rate))
  return rate;
 else
  return -EINVAL;
}
