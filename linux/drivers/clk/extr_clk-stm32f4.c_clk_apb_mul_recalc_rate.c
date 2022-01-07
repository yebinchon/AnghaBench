
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_apb_mul {int bit_idx; } ;


 int BIT (int ) ;
 scalar_t__ STM32F4_RCC_CFGR ;
 scalar_t__ base ;
 int readl (scalar_t__) ;
 struct clk_apb_mul* to_clk_apb_mul (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_apb_mul_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 struct clk_apb_mul *am = to_clk_apb_mul(hw);

 if (readl(base + STM32F4_RCC_CFGR) & BIT(am->bit_idx))
  return parent_rate * 2;

 return parent_rate;
}
