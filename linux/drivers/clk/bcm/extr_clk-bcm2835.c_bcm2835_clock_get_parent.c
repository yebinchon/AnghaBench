
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct bcm2835_cprman {int dummy; } ;
struct bcm2835_clock_data {int ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;


 int CM_SRC_MASK ;
 int CM_SRC_SHIFT ;
 struct bcm2835_clock* bcm2835_clock_from_hw (struct clk_hw*) ;
 int cprman_read (struct bcm2835_cprman*,int ) ;

__attribute__((used)) static u8 bcm2835_clock_get_parent(struct clk_hw *hw)
{
 struct bcm2835_clock *clock = bcm2835_clock_from_hw(hw);
 struct bcm2835_cprman *cprman = clock->cprman;
 const struct bcm2835_clock_data *data = clock->data;
 u32 src = cprman_read(cprman, data->ctl_reg);

 return (src & CM_SRC_MASK) >> CM_SRC_SHIFT;
}
