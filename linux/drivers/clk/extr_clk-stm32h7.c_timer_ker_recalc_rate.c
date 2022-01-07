
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_ker {int dppre_shift; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ RCC_CFGR ;
 scalar_t__ RCC_D2CFGR ;
 scalar_t__ base ;
 int readl (scalar_t__) ;
 struct timer_ker* to_timer_ker (struct clk_hw*) ;

__attribute__((used)) static unsigned long timer_ker_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct timer_ker *clk_elem = to_timer_ker(hw);
 u32 timpre;
 u32 dppre_shift = clk_elem->dppre_shift;
 u32 prescaler;
 u32 mul;

 timpre = (readl(base + RCC_CFGR) >> 15) & 0x01;

 prescaler = (readl(base + RCC_D2CFGR) >> dppre_shift) & 0x03;

 mul = 2;

 if (prescaler < 4)
  mul = 1;

 else if (timpre && prescaler > 4)
  mul = 4;

 return parent_rate * mul;
}
