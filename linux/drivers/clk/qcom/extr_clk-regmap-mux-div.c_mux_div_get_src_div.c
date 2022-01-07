
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; int hw; } ;
struct clk_regmap_mux_div {int src_shift; int hid_shift; int hid_width; int src_width; scalar_t__ reg_offset; TYPE_1__ clkr; } ;


 int BIT (int ) ;
 scalar_t__ CFG_RCGR ;
 scalar_t__ CMD_RCGR ;
 int CMD_RCGR_DIRTY_CFG ;
 char* clk_hw_get_name (int *) ;
 int pr_err (char*,char const*) ;
 int regmap_read (int ,scalar_t__,int*) ;

__attribute__((used)) static void mux_div_get_src_div(struct clk_regmap_mux_div *md, u32 *src,
    u32 *div)
{
 u32 val, d, s;
 const char *name = clk_hw_get_name(&md->clkr.hw);

 regmap_read(md->clkr.regmap, CMD_RCGR + md->reg_offset, &val);

 if (val & CMD_RCGR_DIRTY_CFG) {
  pr_err("%s: RCG configuration is pending\n", name);
  return;
 }

 regmap_read(md->clkr.regmap, CFG_RCGR + md->reg_offset, &val);
 s = (val >> md->src_shift);
 s &= BIT(md->src_width) - 1;
 *src = s;

 d = (val >> md->hid_shift);
 d &= BIT(md->hid_width) - 1;
 *div = d;
}
