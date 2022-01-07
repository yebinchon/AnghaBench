
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_prcc {int is_enabled; } ;
struct clk_hw {int dummy; } ;


 struct clk_prcc* to_clk_prcc (struct clk_hw*) ;

__attribute__((used)) static int clk_prcc_is_enabled(struct clk_hw *hw)
{
 struct clk_prcc *clk = to_clk_prcc(hw);
 return clk->is_enabled;
}
