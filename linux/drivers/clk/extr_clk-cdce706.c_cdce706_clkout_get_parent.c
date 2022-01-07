
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct cdce706_hw_data {int parent; } ;


 struct cdce706_hw_data* to_hw_data (struct clk_hw*) ;

__attribute__((used)) static u8 cdce706_clkout_get_parent(struct clk_hw *hw)
{
 struct cdce706_hw_data *hwd = to_hw_data(hw);

 return hwd->parent;
}
