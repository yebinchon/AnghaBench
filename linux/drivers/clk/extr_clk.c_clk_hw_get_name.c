
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {TYPE_1__* core; } ;
struct TYPE_2__ {char const* name; } ;



const char *clk_hw_get_name(const struct clk_hw *hw)
{
 return hw->core->name;
}
