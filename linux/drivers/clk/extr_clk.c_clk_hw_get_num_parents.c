
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {TYPE_1__* core; } ;
struct TYPE_2__ {unsigned int num_parents; } ;



unsigned int clk_hw_get_num_parents(const struct clk_hw *hw)
{
 return hw->core->num_parents;
}
