
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_div_table {int dummy; } ;


 unsigned long CLK_DIVIDER_ONE_BASED ;
 unsigned int _get_table_div (struct clk_div_table const*,unsigned int) ;

__attribute__((used)) static unsigned int _get_div(const struct clk_div_table *table,
        unsigned int val, unsigned long flags, u8 width)
{
 if (flags & CLK_DIVIDER_ONE_BASED)
  return val;
 if (table)
  return _get_table_div(table, val);
 return val + 1;
}
