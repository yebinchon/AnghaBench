
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_cker {int apbdiv; } ;
struct clk_hw {int dummy; } ;


 int APB_DIV_MASK ;
 int readl_relaxed (int ) ;
 struct timer_cker* to_timer_cker (struct clk_hw*) ;

__attribute__((used)) static unsigned long __bestmult(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct timer_cker *tim_ker = to_timer_cker(hw);
 u32 prescaler;
 unsigned int mult = 0;

 prescaler = readl_relaxed(tim_ker->apbdiv) & APB_DIV_MASK;
 if (prescaler < 2)
  return 1;

 mult = 2;

 if (rate / parent_rate >= 4)
  mult = 4;

 return mult;
}
