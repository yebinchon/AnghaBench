
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 long DIV_ROUND_UP (unsigned long,int) ;
 int clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (int ,unsigned long) ;

__attribute__((used)) static long krait_div2_round_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long *parent_rate)
{
 *parent_rate = clk_hw_round_rate(clk_hw_get_parent(hw), rate * 2);
 return DIV_ROUND_UP(*parent_rate, 2);
}
