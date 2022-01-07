
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long fixed_rate; } ;


 TYPE_1__* clkhw_to_sosc (struct clk_hw*) ;

__attribute__((used)) static unsigned long sosc_clk_calc_rate(struct clk_hw *hw,
     unsigned long parent_rate)
{
 return clkhw_to_sosc(hw)->fixed_rate;
}
