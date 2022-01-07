
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clk_syscon {int en_bit; int en_reg; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int readw (int ) ;
 struct clk_syscon* to_syscon (struct clk_hw*) ;

__attribute__((used)) static int syscon_clk_is_enabled(struct clk_hw *hw)
{
 struct clk_syscon *sclk = to_syscon(hw);
 u16 val;


 if (!sclk->en_reg)
  return 1;

 val = readw(sclk->en_reg);
 val &= BIT(sclk->en_bit);

 return val ? 1 : 0;
}
