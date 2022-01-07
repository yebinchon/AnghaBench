
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct cdce706_hw_data {int idx; int dev_data; } ;


 int CDCE706_CLKOUT (int ) ;
 int CDCE706_CLKOUT_ENABLE_MASK ;
 int cdce706_reg_update (int ,int ,int ,int ) ;
 struct cdce706_hw_data* to_hw_data (struct clk_hw*) ;

__attribute__((used)) static int cdce706_clkout_prepare(struct clk_hw *hw)
{
 struct cdce706_hw_data *hwd = to_hw_data(hw);

 return cdce706_reg_update(hwd->dev_data, CDCE706_CLKOUT(hwd->idx),
      CDCE706_CLKOUT_ENABLE_MASK,
      CDCE706_CLKOUT_ENABLE_MASK);
}
