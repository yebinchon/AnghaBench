
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_mux {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;


 struct clk_hw* __clk_get_hw (struct clk*) ;
 int clk_unregister (struct clk*) ;
 int kfree (struct clk_mux*) ;
 struct clk_mux* to_clk_mux (struct clk_hw*) ;

void clk_unregister_mux(struct clk *clk)
{
 struct clk_mux *mux;
 struct clk_hw *hw;

 hw = __clk_get_hw(clk);
 if (!hw)
  return;

 mux = to_clk_mux(hw);

 clk_unregister(clk);
 kfree(mux);
}
