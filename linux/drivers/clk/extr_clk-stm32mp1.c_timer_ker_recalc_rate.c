
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_cker {int timpre; int apbdiv; } ;
struct clk_hw {int dummy; } ;


 int APB_DIV_MASK ;
 int TIM_PRE_MASK ;
 int readl_relaxed (int ) ;
 struct timer_cker* to_timer_cker (struct clk_hw*) ;

__attribute__((used)) static unsigned long timer_ker_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct timer_cker *tim_ker = to_timer_cker(hw);
 u32 prescaler, timpre;
 u32 mul;

 prescaler = readl_relaxed(tim_ker->apbdiv) & APB_DIV_MASK;

 timpre = readl_relaxed(tim_ker->timpre) & TIM_PRE_MASK;

 if (!prescaler)
  return parent_rate;

 mul = (timpre + 1) * 2;

 return parent_rate * mul;
}
