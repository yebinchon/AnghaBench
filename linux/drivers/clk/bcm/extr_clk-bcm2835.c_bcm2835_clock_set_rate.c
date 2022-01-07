
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct bcm2835_cprman {int regs_lock; } ;
struct bcm2835_clock_data {int div_reg; int ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;


 int CM_DIV_FRAC_MASK ;
 int CM_FRAC ;
 int bcm2835_clock_choose_div (struct clk_hw*,unsigned long,unsigned long,int) ;
 struct bcm2835_clock* bcm2835_clock_from_hw (struct clk_hw*) ;
 int cprman_read (struct bcm2835_cprman*,int ) ;
 int cprman_write (struct bcm2835_cprman*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bcm2835_clock_set_rate(struct clk_hw *hw,
      unsigned long rate, unsigned long parent_rate)
{
 struct bcm2835_clock *clock = bcm2835_clock_from_hw(hw);
 struct bcm2835_cprman *cprman = clock->cprman;
 const struct bcm2835_clock_data *data = clock->data;
 u32 div = bcm2835_clock_choose_div(hw, rate, parent_rate, 0);
 u32 ctl;

 spin_lock(&cprman->regs_lock);
 ctl = cprman_read(cprman, data->ctl_reg) & ~CM_FRAC;
 ctl |= (div & CM_DIV_FRAC_MASK) ? CM_FRAC : 0;
 cprman_write(cprman, data->ctl_reg, ctl);

 cprman_write(cprman, data->div_reg, div);

 spin_unlock(&cprman->regs_lock);

 return 0;
}
