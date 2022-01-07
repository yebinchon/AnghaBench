
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct palmas_clock_info {TYPE_1__* clk_desc; int dev; int palmas; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ delay; int control_reg; int enable_mask; } ;


 int PALMAS_RESOURCE_BASE ;
 int dev_err (int ,char*,int ,int) ;
 int palmas_update_bits (int ,int ,int ,int ,int ) ;
 struct palmas_clock_info* to_palmas_clks_info (struct clk_hw*) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static int palmas_clks_prepare(struct clk_hw *hw)
{
 struct palmas_clock_info *cinfo = to_palmas_clks_info(hw);
 int ret;

 ret = palmas_update_bits(cinfo->palmas, PALMAS_RESOURCE_BASE,
     cinfo->clk_desc->control_reg,
     cinfo->clk_desc->enable_mask,
     cinfo->clk_desc->enable_mask);
 if (ret < 0)
  dev_err(cinfo->dev, "Reg 0x%02x update failed, %d\n",
   cinfo->clk_desc->control_reg, ret);
 else if (cinfo->clk_desc->delay)
  udelay(cinfo->clk_desc->delay);

 return ret;
}
