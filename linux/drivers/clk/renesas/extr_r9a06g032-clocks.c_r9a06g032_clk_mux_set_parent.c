
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r9a06g032_clk_bitsel {int selector; int clocks; } ;
struct clk_hw {int dummy; } ;


 int clk_rdesc_set (int ,int ,int) ;
 struct r9a06g032_clk_bitsel* to_clk_bitselect (struct clk_hw*) ;

__attribute__((used)) static int r9a06g032_clk_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct r9a06g032_clk_bitsel *set = to_clk_bitselect(hw);


 clk_rdesc_set(set->clocks, set->selector, !!index);

 return 0;
}
