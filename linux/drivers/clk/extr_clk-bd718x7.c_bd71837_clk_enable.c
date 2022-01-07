
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int bd71837_clk_set (struct clk_hw*,int) ;

__attribute__((used)) static int bd71837_clk_enable(struct clk_hw *hw)
{
 return bd71837_clk_set(hw, 1);
}
