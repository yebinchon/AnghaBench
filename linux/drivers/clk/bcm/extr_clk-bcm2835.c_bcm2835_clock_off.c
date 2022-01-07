
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct bcm2835_cprman {int regs_lock; } ;
struct bcm2835_clock_data {int ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;


 int CM_ENABLE ;
 struct bcm2835_clock* bcm2835_clock_from_hw (struct clk_hw*) ;
 int bcm2835_clock_wait_busy (struct bcm2835_clock*) ;
 int cprman_read (struct bcm2835_cprman*,int ) ;
 int cprman_write (struct bcm2835_cprman*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void bcm2835_clock_off(struct clk_hw *hw)
{
 struct bcm2835_clock *clock = bcm2835_clock_from_hw(hw);
 struct bcm2835_cprman *cprman = clock->cprman;
 const struct bcm2835_clock_data *data = clock->data;

 spin_lock(&cprman->regs_lock);
 cprman_write(cprman, data->ctl_reg,
       cprman_read(cprman, data->ctl_reg) & ~CM_ENABLE);
 spin_unlock(&cprman->regs_lock);


 bcm2835_clock_wait_busy(clock);
}
