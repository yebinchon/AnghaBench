
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_mux {int dummy; } ;
struct clk_hw {int dummy; } ;


 int clk_hw_unregister (struct clk_hw*) ;
 int kfree (struct clk_mux*) ;
 struct clk_mux* to_clk_mux (struct clk_hw*) ;

void clk_hw_unregister_mux(struct clk_hw *hw)
{
 struct clk_mux *mux;

 mux = to_clk_mux(hw);

 clk_hw_unregister(hw);
 kfree(mux);
}
