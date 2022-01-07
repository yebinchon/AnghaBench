
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_fractional_divider {int dummy; } ;


 int clk_hw_unregister (struct clk_hw*) ;
 int kfree (struct clk_fractional_divider*) ;
 struct clk_fractional_divider* to_clk_fd (struct clk_hw*) ;

void clk_hw_unregister_fractional_divider(struct clk_hw *hw)
{
 struct clk_fractional_divider *fd;

 fd = to_clk_fd(hw);

 clk_hw_unregister(hw);
 kfree(fd);
}
