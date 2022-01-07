
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dentry {int dummy; } ;
struct debugfs_regset32 {size_t nregs; scalar_t__ base; struct debugfs_reg32* regs; } ;
struct debugfs_reg32 {int dummy; } ;
struct bcm2835_cprman {scalar_t__ regs; int dev; } ;


 int GFP_KERNEL ;
 int S_IRUGO ;
 int debugfs_create_regset32 (char*,int ,struct dentry*,struct debugfs_regset32*) ;
 struct debugfs_regset32* devm_kzalloc (int ,int,int ) ;

__attribute__((used)) static void bcm2835_debugfs_regset(struct bcm2835_cprman *cprman, u32 base,
      struct debugfs_reg32 *regs, size_t nregs,
      struct dentry *dentry)
{
 struct debugfs_regset32 *regset;

 regset = devm_kzalloc(cprman->dev, sizeof(*regset), GFP_KERNEL);
 if (!regset)
  return;

 regset->regs = regs;
 regset->nregs = nregs;
 regset->base = cprman->regs + base;

 debugfs_create_regset32("regdump", S_IRUGO, dentry, regset);
}
