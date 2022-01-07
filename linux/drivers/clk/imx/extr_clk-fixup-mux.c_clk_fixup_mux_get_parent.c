
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int hw; } ;
struct clk_fixup_mux {TYPE_2__ mux; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_parent ) (int *) ;} ;


 int stub1 (int *) ;
 struct clk_fixup_mux* to_clk_fixup_mux (struct clk_hw*) ;

__attribute__((used)) static u8 clk_fixup_mux_get_parent(struct clk_hw *hw)
{
 struct clk_fixup_mux *fixup_mux = to_clk_fixup_mux(hw);

 return fixup_mux->ops->get_parent(&fixup_mux->mux.hw);
}
