
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gate; scalar_t__ reset; } ;
struct r9a06g032_clk_gate {TYPE_1__ gate; int clocks; } ;
struct clk_hw {int dummy; } ;


 int clk_rdesc_get (int ,scalar_t__) ;
 struct r9a06g032_clk_gate* to_r9a06g032_gate (struct clk_hw*) ;

__attribute__((used)) static int r9a06g032_clk_gate_is_enabled(struct clk_hw *hw)
{
 struct r9a06g032_clk_gate *g = to_r9a06g032_gate(hw);


 if (g->gate.reset && !clk_rdesc_get(g->clocks, g->gate.reset))
  return 0;

 return clk_rdesc_get(g->clocks, g->gate.gate);
}
