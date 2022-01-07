
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r9a06g032_clk_gate {int gate; int clocks; } ;
struct clk_hw {int dummy; } ;


 int r9a06g032_clk_gate_set (int ,int *,int ) ;
 struct r9a06g032_clk_gate* to_r9a06g032_gate (struct clk_hw*) ;

__attribute__((used)) static void r9a06g032_clk_gate_disable(struct clk_hw *hw)
{
 struct r9a06g032_clk_gate *g = to_r9a06g032_gate(hw);

 r9a06g032_clk_gate_set(g->clocks, &g->gate, 0);
}
