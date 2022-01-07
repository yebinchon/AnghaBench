
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct bcm2835_pll_divider_data {int a2w_reg; } ;
struct bcm2835_pll_divider {struct bcm2835_pll_divider_data* data; struct bcm2835_cprman* cprman; } ;
struct bcm2835_cprman {int dummy; } ;


 int A2W_PLL_CHANNEL_DISABLE ;
 struct bcm2835_pll_divider* bcm2835_pll_divider_from_hw (struct clk_hw*) ;
 int cprman_read (struct bcm2835_cprman*,int ) ;

__attribute__((used)) static int bcm2835_pll_divider_is_on(struct clk_hw *hw)
{
 struct bcm2835_pll_divider *divider = bcm2835_pll_divider_from_hw(hw);
 struct bcm2835_cprman *cprman = divider->cprman;
 const struct bcm2835_pll_divider_data *data = divider->data;

 return !(cprman_read(cprman, data->a2w_reg) & A2W_PLL_CHANNEL_DISABLE);
}
