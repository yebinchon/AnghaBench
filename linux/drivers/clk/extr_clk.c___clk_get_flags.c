
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* core; } ;
struct TYPE_2__ {unsigned long flags; } ;



unsigned long __clk_get_flags(struct clk *clk)
{
 return !clk ? 0 : clk->core->flags;
}
