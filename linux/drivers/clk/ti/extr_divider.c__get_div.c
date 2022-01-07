
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_omap_divider {int flags; scalar_t__ table; } ;


 int CLK_DIVIDER_ONE_BASED ;
 int CLK_DIVIDER_POWER_OF_TWO ;
 unsigned int _get_table_div (scalar_t__,unsigned int) ;

__attribute__((used)) static unsigned int _get_div(struct clk_omap_divider *divider, unsigned int val)
{
 if (divider->flags & CLK_DIVIDER_ONE_BASED)
  return val;
 if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
  return 1 << val;
 if (divider->table)
  return _get_table_div(divider->table, val);
 return val + 1;
}
