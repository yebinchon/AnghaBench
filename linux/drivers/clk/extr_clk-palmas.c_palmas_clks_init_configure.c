
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int clk; } ;
struct palmas_clock_info {TYPE_2__ hw; TYPE_1__* clk_desc; int dev; scalar_t__ ext_control_pin; int palmas; } ;
struct TYPE_3__ {int clk_name; int sleep_reqstr_id; int control_reg; int sleep_mask; } ;


 int PALMAS_RESOURCE_BASE ;
 int clk_prepare (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (int ,char*,int,...) ;
 int palmas_ext_control_req_config (int ,int ,scalar_t__,int) ;
 int palmas_update_bits (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int palmas_clks_init_configure(struct palmas_clock_info *cinfo)
{
 int ret;

 ret = palmas_update_bits(cinfo->palmas, PALMAS_RESOURCE_BASE,
     cinfo->clk_desc->control_reg,
     cinfo->clk_desc->sleep_mask, 0);
 if (ret < 0) {
  dev_err(cinfo->dev, "Reg 0x%02x update failed, %d\n",
   cinfo->clk_desc->control_reg, ret);
  return ret;
 }

 if (cinfo->ext_control_pin) {
  ret = clk_prepare(cinfo->hw.clk);
  if (ret < 0) {
   dev_err(cinfo->dev, "Clock prep failed, %d\n", ret);
   return ret;
  }

  ret = palmas_ext_control_req_config(cinfo->palmas,
     cinfo->clk_desc->sleep_reqstr_id,
     cinfo->ext_control_pin, 1);
  if (ret < 0) {
   dev_err(cinfo->dev, "Ext config for %s failed, %d\n",
    cinfo->clk_desc->clk_name, ret);
   clk_unprepare(cinfo->hw.clk);
   return ret;
  }
 }

 return ret;
}
