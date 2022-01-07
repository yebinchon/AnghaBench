
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clk_hw {int dummy; } ;
struct clk_divider {int flags; int width; } ;


 long DIV_ROUND_UP_ULL (int,int) ;
 int clk_half_divider_bestdiv (struct clk_hw*,unsigned long,unsigned long*,int ,int ) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;

__attribute__((used)) static long clk_half_divider_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *prate)
{
 struct clk_divider *divider = to_clk_divider(hw);
 int div;

 div = clk_half_divider_bestdiv(hw, rate, prate,
           divider->width,
           divider->flags);

 return DIV_ROUND_UP_ULL(((u64)*prate * 2), div * 2 + 3);
}
