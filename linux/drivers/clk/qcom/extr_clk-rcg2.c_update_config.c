
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; struct clk_hw hw; } ;
struct clk_rcg2 {scalar_t__ cmd_rcgr; TYPE_1__ clkr; } ;


 scalar_t__ CMD_REG ;
 int CMD_UPDATE ;
 int EBUSY ;
 int WARN (int,char*,char const*) ;
 char* clk_hw_get_name (struct clk_hw*) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int update_config(struct clk_rcg2 *rcg)
{
 int count, ret;
 u32 cmd;
 struct clk_hw *hw = &rcg->clkr.hw;
 const char *name = clk_hw_get_name(hw);

 ret = regmap_update_bits(rcg->clkr.regmap, rcg->cmd_rcgr + CMD_REG,
     CMD_UPDATE, CMD_UPDATE);
 if (ret)
  return ret;


 for (count = 500; count > 0; count--) {
  ret = regmap_read(rcg->clkr.regmap, rcg->cmd_rcgr + CMD_REG, &cmd);
  if (ret)
   return ret;
  if (!(cmd & CMD_UPDATE))
   return 0;
  udelay(1);
 }

 WARN(1, "%s: rcg didn't update its configuration.", name);
 return -EBUSY;
}
