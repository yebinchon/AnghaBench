
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_hw {TYPE_2__* core; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct clk_hw* hw; } ;



struct clk_hw *clk_hw_get_parent(const struct clk_hw *hw)
{
 return hw->core->parent ? hw->core->parent->hw : ((void*)0);
}
