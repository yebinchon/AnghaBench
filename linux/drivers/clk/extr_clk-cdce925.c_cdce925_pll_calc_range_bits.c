
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct clk_hw {int clk; } ;
struct clk {int dummy; } ;


 struct clk* clk_get_parent (int ) ;
 unsigned long clk_get_rate (struct clk*) ;
 unsigned long mult_frac (unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static u8 cdce925_pll_calc_range_bits(struct clk_hw *hw, u16 n, u16 m)
{
 struct clk *parent = clk_get_parent(hw->clk);
 unsigned long rate = clk_get_rate(parent);

 rate = mult_frac(rate, (unsigned long)n, (unsigned long)m);
 if (rate >= 175000000)
  return 0x3;
 if (rate >= 150000000)
  return 0x02;
 if (rate >= 125000000)
  return 0x01;
 return 0x00;
}
