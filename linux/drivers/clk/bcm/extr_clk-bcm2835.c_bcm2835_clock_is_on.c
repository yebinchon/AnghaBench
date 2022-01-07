
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct bcm2835_cprman {int dummy; } ;
struct bcm2835_clock_data {int ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;


 int CM_ENABLE ;
 struct bcm2835_clock* bcm2835_clock_from_hw (struct clk_hw*) ;
 int cprman_read (struct bcm2835_cprman*,int ) ;

__attribute__((used)) static int bcm2835_clock_is_on(struct clk_hw *hw)
{
 struct bcm2835_clock *clock = bcm2835_clock_from_hw(hw);
 struct bcm2835_cprman *cprman = clock->cprman;
 const struct bcm2835_clock_data *data = clock->data;

 return (cprman_read(cprman, data->ctl_reg) & CM_ENABLE) != 0;
}
