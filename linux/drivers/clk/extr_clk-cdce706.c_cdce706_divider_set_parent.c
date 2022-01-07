
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct cdce706_hw_data {int parent; int idx; int dev_data; } ;


 int CDCE706_DIVIDER_PLL (int ) ;
 int CDCE706_DIVIDER_PLL_MASK (int ) ;
 int CDCE706_DIVIDER_PLL_SHIFT (int ) ;
 int cdce706_reg_update (int ,int ,int ,int) ;
 struct cdce706_hw_data* to_hw_data (struct clk_hw*) ;

__attribute__((used)) static int cdce706_divider_set_parent(struct clk_hw *hw, u8 index)
{
 struct cdce706_hw_data *hwd = to_hw_data(hw);

 if (hwd->parent == index)
  return 0;
 hwd->parent = index;
 return cdce706_reg_update(hwd->dev_data,
      CDCE706_DIVIDER_PLL(hwd->idx),
      CDCE706_DIVIDER_PLL_MASK(hwd->idx),
      index << CDCE706_DIVIDER_PLL_SHIFT(hwd->idx));
}
