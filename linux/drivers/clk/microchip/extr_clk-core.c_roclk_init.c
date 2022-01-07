
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int roclk_disable (struct clk_hw*) ;

__attribute__((used)) static void roclk_init(struct clk_hw *hw)
{

 roclk_disable(hw);
}
