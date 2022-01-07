
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct clk_omap_divider {int flags; scalar_t__ table; } ;


 int CLK_DIVIDER_ONE_BASED ;
 int CLK_DIVIDER_POWER_OF_TWO ;
 unsigned int __ffs (unsigned int) ;
 unsigned int _get_table_val (scalar_t__,unsigned int) ;

__attribute__((used)) static unsigned int _get_val(struct clk_omap_divider *divider, u8 div)
{
 if (divider->flags & CLK_DIVIDER_ONE_BASED)
  return div;
 if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
  return __ffs(div);
 if (divider->table)
  return _get_table_val(divider->table, div);
 return div - 1;
}
