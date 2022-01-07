
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_clk_mgate {TYPE_1__* mgate; int mask; } ;
struct clk_hw {int dummy; } ;
struct clk_gate {int dummy; } ;
struct TYPE_2__ {int flag; } ;


 int mp1_gate_clk_disable (struct clk_hw*) ;
 struct clk_gate* to_clk_gate (struct clk_hw*) ;
 struct stm32_clk_mgate* to_clk_mgate (struct clk_gate*) ;

__attribute__((used)) static void mp1_mgate_clk_disable(struct clk_hw *hw)
{
 struct clk_gate *gate = to_clk_gate(hw);
 struct stm32_clk_mgate *clk_mgate = to_clk_mgate(gate);

 clk_mgate->mgate->flag &= ~clk_mgate->mask;

 if (clk_mgate->mgate->flag == 0)
  mp1_gate_clk_disable(hw);
}
