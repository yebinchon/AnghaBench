
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct dove_clk {unsigned int div_bit_start; unsigned int div_bit_size; unsigned int* divider_table; scalar_t__ base; } ;


 scalar_t__ DIV_CTRL0 ;
 unsigned int readl_relaxed (scalar_t__) ;

__attribute__((used)) static unsigned int dove_get_divider(struct dove_clk *dc)
{
 unsigned int divider;
 u32 val;

 val = readl_relaxed(dc->base + DIV_CTRL0);
 val >>= dc->div_bit_start;

 divider = val & ~(~0 << dc->div_bit_size);

 if (dc->divider_table)
  divider = dc->divider_table[divider];

 return divider;
}
