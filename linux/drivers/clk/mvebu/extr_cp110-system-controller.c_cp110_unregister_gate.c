
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int clk_hw_unregister (struct clk_hw*) ;
 int kfree (int ) ;
 int to_cp110_gate_clk (struct clk_hw*) ;

__attribute__((used)) static void cp110_unregister_gate(struct clk_hw *hw)
{
 clk_hw_unregister(hw);
 kfree(to_cp110_gate_clk(hw));
}
