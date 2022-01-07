
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct r9a06g032_clk_dualgate {TYPE_1__* gate; int clocks; int selector; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int gate; } ;


 int clk_rdesc_get (int ,int ) ;
 struct r9a06g032_clk_dualgate* to_clk_dualgate (struct clk_hw*) ;

__attribute__((used)) static int r9a06g032_clk_dualgate_is_enabled(struct clk_hw *hw)
{
 struct r9a06g032_clk_dualgate *g = to_clk_dualgate(hw);
 u8 sel_bit = clk_rdesc_get(g->clocks, g->selector);

 return clk_rdesc_get(g->clocks, g->gate[sel_bit].gate);
}
