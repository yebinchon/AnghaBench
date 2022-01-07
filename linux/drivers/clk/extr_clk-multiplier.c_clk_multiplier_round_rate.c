
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_multiplier {int flags; int width; } ;
struct clk_hw {int dummy; } ;


 unsigned long __bestmult (struct clk_hw*,unsigned long,unsigned long*,int ,int ) ;
 struct clk_multiplier* to_clk_multiplier (struct clk_hw*) ;

__attribute__((used)) static long clk_multiplier_round_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long *parent_rate)
{
 struct clk_multiplier *mult = to_clk_multiplier(hw);
 unsigned long factor = __bestmult(hw, rate, parent_rate,
       mult->width, mult->flags);

 return *parent_rate * factor;
}
