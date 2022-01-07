
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct clk_generated {int parent_id; } ;


 struct clk_generated* to_clk_generated (struct clk_hw*) ;

__attribute__((used)) static u8 clk_generated_get_parent(struct clk_hw *hw)
{
 struct clk_generated *gck = to_clk_generated(hw);

 return gck->parent_id;
}
