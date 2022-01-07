
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct bcm2835_pll_divider_data {int hold_mask; int cm_reg; int a2w_reg; } ;
struct bcm2835_pll_divider {struct bcm2835_pll_divider_data* data; struct bcm2835_cprman* cprman; } ;
struct bcm2835_cprman {int regs_lock; } ;


 int A2W_PLL_CHANNEL_DISABLE ;
 struct bcm2835_pll_divider* bcm2835_pll_divider_from_hw (struct clk_hw*) ;
 int cprman_read (struct bcm2835_cprman*,int ) ;
 int cprman_write (struct bcm2835_cprman*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bcm2835_pll_divider_on(struct clk_hw *hw)
{
 struct bcm2835_pll_divider *divider = bcm2835_pll_divider_from_hw(hw);
 struct bcm2835_cprman *cprman = divider->cprman;
 const struct bcm2835_pll_divider_data *data = divider->data;

 spin_lock(&cprman->regs_lock);
 cprman_write(cprman, data->a2w_reg,
       cprman_read(cprman, data->a2w_reg) &
       ~A2W_PLL_CHANNEL_DISABLE);

 cprman_write(cprman, data->cm_reg,
       cprman_read(cprman, data->cm_reg) & ~data->hold_mask);
 spin_unlock(&cprman->regs_lock);

 return 0;
}
