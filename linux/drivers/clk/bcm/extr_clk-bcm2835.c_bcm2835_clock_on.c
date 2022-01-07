
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct bcm2835_cprman {int dev; int regs_lock; } ;
struct bcm2835_clock_data {scalar_t__ tcnt_mux; int name; int ctl_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;


 int CM_ENABLE ;
 int CM_GATE ;
 struct bcm2835_clock* bcm2835_clock_from_hw (struct clk_hw*) ;
 int bcm2835_measure_tcnt_mux (struct bcm2835_cprman*,scalar_t__) ;
 int clk_hw_get_rate (struct clk_hw*) ;
 int cprman_read (struct bcm2835_cprman*,int ) ;
 int cprman_write (struct bcm2835_cprman*,int ,int) ;
 int dev_info (int ,char*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bcm2835_clock_on(struct clk_hw *hw)
{
 struct bcm2835_clock *clock = bcm2835_clock_from_hw(hw);
 struct bcm2835_cprman *cprman = clock->cprman;
 const struct bcm2835_clock_data *data = clock->data;

 spin_lock(&cprman->regs_lock);
 cprman_write(cprman, data->ctl_reg,
       cprman_read(cprman, data->ctl_reg) |
       CM_ENABLE |
       CM_GATE);
 spin_unlock(&cprman->regs_lock);




 if (data->tcnt_mux && 0) {
  dev_info(cprman->dev,
    "clk %s: rate %ld, measure %ld\n",
    data->name,
    clk_hw_get_rate(hw),
    bcm2835_measure_tcnt_mux(cprman, data->tcnt_mux));
 }

 return 0;
}
