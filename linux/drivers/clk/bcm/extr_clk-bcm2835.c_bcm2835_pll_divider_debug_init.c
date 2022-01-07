
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct debugfs_reg32 {char* name; int offset; } ;
struct clk_hw {int dummy; } ;
struct bcm2835_pll_divider_data {int a2w_reg; int cm_reg; } ;
struct bcm2835_pll_divider {struct bcm2835_pll_divider_data* data; struct bcm2835_cprman* cprman; } ;
struct bcm2835_cprman {int dev; } ;


 int GFP_KERNEL ;
 int bcm2835_debugfs_regset (struct bcm2835_cprman*,int ,struct debugfs_reg32*,int,struct dentry*) ;
 struct bcm2835_pll_divider* bcm2835_pll_divider_from_hw (struct clk_hw*) ;
 struct debugfs_reg32* devm_kcalloc (int ,int,int,int ) ;

__attribute__((used)) static void bcm2835_pll_divider_debug_init(struct clk_hw *hw,
        struct dentry *dentry)
{
 struct bcm2835_pll_divider *divider = bcm2835_pll_divider_from_hw(hw);
 struct bcm2835_cprman *cprman = divider->cprman;
 const struct bcm2835_pll_divider_data *data = divider->data;
 struct debugfs_reg32 *regs;

 regs = devm_kcalloc(cprman->dev, 7, sizeof(*regs), GFP_KERNEL);
 if (!regs)
  return;

 regs[0].name = "cm";
 regs[0].offset = data->cm_reg;
 regs[1].name = "a2w";
 regs[1].offset = data->a2w_reg;

 bcm2835_debugfs_regset(cprman, 0, regs, 2, dentry);
}
