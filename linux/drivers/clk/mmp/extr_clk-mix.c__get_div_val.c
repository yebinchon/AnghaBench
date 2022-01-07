
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_clk_mix {int div_flags; struct clk_div_table* div_table; } ;
struct clk_div_table {int div; unsigned int val; } ;


 int CLK_DIVIDER_ONE_BASED ;
 int CLK_DIVIDER_POWER_OF_TWO ;
 unsigned int __ffs (unsigned int) ;

__attribute__((used)) static unsigned int _get_div_val(struct mmp_clk_mix *mix, unsigned int div)
{
 struct clk_div_table *clkt;

 if (mix->div_flags & CLK_DIVIDER_ONE_BASED)
  return div;
 if (mix->div_flags & CLK_DIVIDER_POWER_OF_TWO)
  return __ffs(div);
 if (mix->div_table) {
  for (clkt = mix->div_table; clkt->div; clkt++)
   if (clkt->div == div)
    return clkt->val;
  if (clkt->div == 0)
   return 0;
 }

 return div - 1;
}
