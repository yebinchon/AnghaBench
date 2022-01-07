
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bits; unsigned int* div_table; } ;
struct ingenic_cgu_clk_info {TYPE_1__ div; } ;



__attribute__((used)) static unsigned int
ingenic_clk_calc_hw_div(const struct ingenic_cgu_clk_info *clk_info,
   unsigned int div)
{
 unsigned int i;

 for (i = 0; i < (1 << clk_info->div.bits)
    && clk_info->div.div_table[i]; i++) {
  if (clk_info->div.div_table[i] >= div)
   return i;
 }

 return i - 1;
}
