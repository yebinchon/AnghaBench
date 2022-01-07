
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct clk_hw {int dummy; } ;
struct bcm2835_cprman {int dummy; } ;
struct bcm2835_clock_data {int ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;


 int ARRAY_SIZE (int ) ;
 struct bcm2835_clock* bcm2835_clock_from_hw (struct clk_hw*) ;
 int bcm2835_debugfs_clock_reg32 ;
 int bcm2835_debugfs_regset (struct bcm2835_cprman*,int ,int ,int ,struct dentry*) ;

__attribute__((used)) static void bcm2835_clock_debug_init(struct clk_hw *hw,
        struct dentry *dentry)
{
 struct bcm2835_clock *clock = bcm2835_clock_from_hw(hw);
 struct bcm2835_cprman *cprman = clock->cprman;
 const struct bcm2835_clock_data *data = clock->data;

 bcm2835_debugfs_regset(cprman, data->ctl_reg,
  bcm2835_debugfs_clock_reg32,
  ARRAY_SIZE(bcm2835_debugfs_clock_reg32),
  dentry);
}
