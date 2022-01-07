
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct palmas_clock_info {TYPE_1__* clk_desc; int dev; int palmas; scalar_t__ ext_control_pin; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int control_reg; int enable_mask; } ;


 int PALMAS_RESOURCE_BASE ;
 int dev_err (int ,char*,int ,int) ;
 int palmas_update_bits (int ,int ,int ,int ,int ) ;
 struct palmas_clock_info* to_palmas_clks_info (struct clk_hw*) ;

__attribute__((used)) static void palmas_clks_unprepare(struct clk_hw *hw)
{
 struct palmas_clock_info *cinfo = to_palmas_clks_info(hw);
 int ret;





 if (cinfo->ext_control_pin)
  return;

 ret = palmas_update_bits(cinfo->palmas, PALMAS_RESOURCE_BASE,
     cinfo->clk_desc->control_reg,
     cinfo->clk_desc->enable_mask, 0);
 if (ret < 0)
  dev_err(cinfo->dev, "Reg 0x%02x update failed, %d\n",
   cinfo->clk_desc->control_reg, ret);
}
