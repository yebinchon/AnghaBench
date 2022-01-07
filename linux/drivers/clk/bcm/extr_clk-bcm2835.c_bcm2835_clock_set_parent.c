
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct bcm2835_cprman {int dummy; } ;
struct bcm2835_clock_data {int ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;


 int CM_SRC_MASK ;
 int CM_SRC_SHIFT ;
 struct bcm2835_clock* bcm2835_clock_from_hw (struct clk_hw*) ;
 int cprman_write (struct bcm2835_cprman*,int ,int) ;

__attribute__((used)) static int bcm2835_clock_set_parent(struct clk_hw *hw, u8 index)
{
 struct bcm2835_clock *clock = bcm2835_clock_from_hw(hw);
 struct bcm2835_cprman *cprman = clock->cprman;
 const struct bcm2835_clock_data *data = clock->data;
 u8 src = (index << CM_SRC_SHIFT) & CM_SRC_MASK;

 cprman_write(cprman, data->ctl_reg, src);
 return 0;
}
