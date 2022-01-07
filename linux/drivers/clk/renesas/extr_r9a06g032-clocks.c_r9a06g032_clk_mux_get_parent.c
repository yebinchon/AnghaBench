
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r9a06g032_clk_bitsel {int selector; int clocks; } ;
struct clk_hw {int dummy; } ;


 int clk_rdesc_get (int ,int ) ;
 struct r9a06g032_clk_bitsel* to_clk_bitselect (struct clk_hw*) ;

__attribute__((used)) static u8 r9a06g032_clk_mux_get_parent(struct clk_hw *hw)
{
 struct r9a06g032_clk_bitsel *set = to_clk_bitselect(hw);

 return clk_rdesc_get(set->clocks, set->selector);
}
