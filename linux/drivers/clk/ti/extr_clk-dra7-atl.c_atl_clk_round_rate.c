
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int DRA7_ATL_DIVIDER_MASK ;

__attribute__((used)) static long atl_clk_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *parent_rate)
{
 unsigned divider;

 divider = (*parent_rate + rate / 2) / rate;
 if (divider > DRA7_ATL_DIVIDER_MASK + 1)
  divider = DRA7_ATL_DIVIDER_MASK + 1;

 return *parent_rate / divider;
}
