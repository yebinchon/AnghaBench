
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int hw; } ;
struct clk_busy_mux {int shift; int reg; TYPE_2__ mux; TYPE_1__* mux_ops; } ;
struct TYPE_3__ {int (* set_parent ) (int *,int ) ;} ;


 int clk_busy_wait (int ,int ) ;
 int stub1 (int *,int ) ;
 struct clk_busy_mux* to_clk_busy_mux (struct clk_hw*) ;

__attribute__((used)) static int clk_busy_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_busy_mux *busy = to_clk_busy_mux(hw);
 int ret;

 ret = busy->mux_ops->set_parent(&busy->mux.hw, index);
 if (!ret)
  ret = clk_busy_wait(busy->reg, busy->shift);

 return ret;
}
