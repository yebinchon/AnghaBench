
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int hw; } ;
struct clk_busy_mux {TYPE_2__ mux; TYPE_1__* mux_ops; } ;
struct TYPE_3__ {int (* get_parent ) (int *) ;} ;


 int stub1 (int *) ;
 struct clk_busy_mux* to_clk_busy_mux (struct clk_hw*) ;

__attribute__((used)) static u8 clk_busy_mux_get_parent(struct clk_hw *hw)
{
 struct clk_busy_mux *busy = to_clk_busy_mux(hw);

 return busy->mux_ops->get_parent(&busy->mux.hw);
}
