
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clk_hw {int dummy; } ;


 int cdce925_y1_calc_divider (unsigned long,unsigned long) ;

__attribute__((used)) static long cdce925_clk_y1_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *parent_rate)
{
 unsigned long l_parent_rate = *parent_rate;
 u16 divider = cdce925_y1_calc_divider(rate, l_parent_rate);

 if (divider)
  return (long)(l_parent_rate / divider);
 return 0;
}
