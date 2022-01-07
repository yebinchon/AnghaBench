
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; int hw; } ;
struct clk_regmap_mux_div {int hid_shift; int src_shift; scalar_t__ reg_offset; TYPE_1__ clkr; int src_width; int hid_width; } ;


 int BIT (int ) ;
 scalar_t__ CFG_RCGR ;
 scalar_t__ CMD_RCGR ;
 int CMD_RCGR_UPDATE ;
 int EBUSY ;
 char* clk_hw_get_name (int *) ;
 int pr_err (char*,char const*) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int udelay (int) ;

int mux_div_set_src_div(struct clk_regmap_mux_div *md, u32 src, u32 div)
{
 int ret, count;
 u32 val, mask;
 const char *name = clk_hw_get_name(&md->clkr.hw);

 val = (div << md->hid_shift) | (src << md->src_shift);
 mask = ((BIT(md->hid_width) - 1) << md->hid_shift) |
        ((BIT(md->src_width) - 1) << md->src_shift);

 ret = regmap_update_bits(md->clkr.regmap, CFG_RCGR + md->reg_offset,
     mask, val);
 if (ret)
  return ret;

 ret = regmap_update_bits(md->clkr.regmap, CMD_RCGR + md->reg_offset,
     CMD_RCGR_UPDATE, CMD_RCGR_UPDATE);
 if (ret)
  return ret;


 for (count = 500; count > 0; count--) {
  ret = regmap_read(md->clkr.regmap, CMD_RCGR + md->reg_offset,
      &val);
  if (ret)
   return ret;
  if (!(val & CMD_RCGR_UPDATE))
   return 0;
  udelay(1);
 }

 pr_err("%s: RCG did not update its configuration", name);
 return -EBUSY;
}
