
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct clk {TYPE_1__* core; } ;
struct TYPE_2__ {struct clk_hw* hw; } ;



struct clk_hw *__clk_get_hw(struct clk *clk)
{
 return !clk ? ((void*)0) : clk->core->hw;
}
