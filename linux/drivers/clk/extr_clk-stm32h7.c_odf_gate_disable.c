
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* disable ) (struct clk_hw*) ;int (* is_enabled ) (struct clk_hw*) ;} ;


 TYPE_1__ clk_gate_ops ;
 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 int pll_disable (struct clk_hw*) ;
 int pll_enable (struct clk_hw*) ;
 int pll_is_enabled (struct clk_hw*) ;
 int stub1 (struct clk_hw*) ;
 int stub2 (struct clk_hw*) ;

__attribute__((used)) static void odf_gate_disable(struct clk_hw *hw)
{
 struct clk_hw *hwp;
 int pll_status;

 if (!clk_gate_ops.is_enabled(hw))
  return;

 hwp = clk_hw_get_parent(hw);

 pll_status = pll_is_enabled(hwp);

 if (pll_status)
  pll_disable(hwp);

 clk_gate_ops.disable(hw);

 if (pll_status)
  pll_enable(hwp);
}
