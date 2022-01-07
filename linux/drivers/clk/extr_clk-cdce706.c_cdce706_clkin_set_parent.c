
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct cdce706_hw_data {int parent; } ;


 struct cdce706_hw_data* to_hw_data (struct clk_hw*) ;

__attribute__((used)) static int cdce706_clkin_set_parent(struct clk_hw *hw, u8 index)
{
 struct cdce706_hw_data *hwd = to_hw_data(hw);

 hwd->parent = index;
 return 0;
}
