
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_omap_divider {int flags; scalar_t__ table; } ;


 int CLK_DIVIDER_ONE_BASED ;
 int CLK_DIVIDER_POWER_OF_TWO ;
 unsigned int _get_table_maxdiv (scalar_t__) ;
 int div_mask (struct clk_omap_divider*) ;

__attribute__((used)) static unsigned int _get_maxdiv(struct clk_omap_divider *divider)
{
 if (divider->flags & CLK_DIVIDER_ONE_BASED)
  return div_mask(divider);
 if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
  return 1 << div_mask(divider);
 if (divider->table)
  return _get_table_maxdiv(divider->table);
 return div_mask(divider) + 1;
}
