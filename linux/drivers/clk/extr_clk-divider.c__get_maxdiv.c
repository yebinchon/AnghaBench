
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_div_table {int dummy; } ;


 unsigned long CLK_DIVIDER_ONE_BASED ;
 unsigned long CLK_DIVIDER_POWER_OF_TWO ;
 unsigned int _get_table_maxdiv (struct clk_div_table const*,int ) ;
 int clk_div_mask (int ) ;

__attribute__((used)) static unsigned int _get_maxdiv(const struct clk_div_table *table, u8 width,
    unsigned long flags)
{
 if (flags & CLK_DIVIDER_ONE_BASED)
  return clk_div_mask(width);
 if (flags & CLK_DIVIDER_POWER_OF_TWO)
  return 1 << clk_div_mask(width);
 if (table)
  return _get_table_maxdiv(table, width);
 return clk_div_mask(width) + 1;
}
