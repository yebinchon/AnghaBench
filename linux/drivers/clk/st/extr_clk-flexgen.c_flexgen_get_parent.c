
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {struct clk_hw hw; } ;
struct flexgen {TYPE_1__ mux; } ;
struct TYPE_4__ {int (* get_parent ) (struct clk_hw*) ;} ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 TYPE_2__ clk_mux_ops ;
 int stub1 (struct clk_hw*) ;
 struct flexgen* to_flexgen (struct clk_hw*) ;

__attribute__((used)) static u8 flexgen_get_parent(struct clk_hw *hw)
{
 struct flexgen *flexgen = to_flexgen(hw);
 struct clk_hw *mux_hw = &flexgen->mux.hw;

 __clk_hw_set_clk(mux_hw, hw);

 return clk_mux_ops.get_parent(mux_hw);
}
