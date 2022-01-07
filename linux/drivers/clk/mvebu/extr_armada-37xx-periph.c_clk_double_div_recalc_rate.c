
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clk_hw {int dummy; } ;
struct clk_double_div {int shift2; int reg2; int shift1; int reg1; } ;


 unsigned long DIV_ROUND_UP_ULL (int ,unsigned int) ;
 unsigned int get_div (int ,int ) ;
 struct clk_double_div* to_clk_double_div (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_double_div_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_double_div *double_div = to_clk_double_div(hw);
 unsigned int div;

 div = get_div(double_div->reg1, double_div->shift1);
 div *= get_div(double_div->reg2, double_div->shift2);

 return DIV_ROUND_UP_ULL((u64)parent_rate, div);
}
