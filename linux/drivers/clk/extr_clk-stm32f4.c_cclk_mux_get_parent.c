
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* get_parent ) (struct clk_hw*) ;} ;


 TYPE_1__ clk_mux_ops ;
 int stub1 (struct clk_hw*) ;

__attribute__((used)) static u8 cclk_mux_get_parent(struct clk_hw *hw)
{
 return clk_mux_ops.get_parent(hw);
}
