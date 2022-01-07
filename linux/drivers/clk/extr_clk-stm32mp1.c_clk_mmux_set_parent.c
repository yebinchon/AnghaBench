
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct stm32_clk_mmux {TYPE_1__* mmux; } ;
struct clk_mux {int dummy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int (* set_parent ) (struct clk_hw*,int ) ;} ;
struct TYPE_3__ {int nbr_clk; struct clk_hw** hws; } ;


 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 int clk_hw_reparent (struct clk_hw*,struct clk_hw*) ;
 TYPE_2__ clk_mux_ops ;
 int stub1 (struct clk_hw*,int ) ;
 struct stm32_clk_mmux* to_clk_mmux (struct clk_mux*) ;
 struct clk_mux* to_clk_mux (struct clk_hw*) ;

__attribute__((used)) static int clk_mmux_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_mux *mux = to_clk_mux(hw);
 struct stm32_clk_mmux *clk_mmux = to_clk_mmux(mux);
 struct clk_hw *hwp;
 int ret, n;

 ret = clk_mux_ops.set_parent(hw, index);
 if (ret)
  return ret;

 hwp = clk_hw_get_parent(hw);

 for (n = 0; n < clk_mmux->mmux->nbr_clk; n++)
  if (clk_mmux->mmux->hws[n] != hw)
   clk_hw_reparent(clk_mmux->mmux->hws[n], hwp);

 return 0;
}
