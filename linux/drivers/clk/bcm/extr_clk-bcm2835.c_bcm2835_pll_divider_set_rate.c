
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clk_hw {int dummy; } ;
struct bcm2835_pll_divider_data {scalar_t__ load_mask; int cm_reg; int a2w_reg; } ;
struct bcm2835_pll_divider {struct bcm2835_pll_divider_data* data; struct bcm2835_cprman* cprman; } ;
struct bcm2835_cprman {int dummy; } ;


 int A2W_PLL_DIV_BITS ;
 scalar_t__ DIV_ROUND_UP_ULL (unsigned long,unsigned long) ;
 struct bcm2835_pll_divider* bcm2835_pll_divider_from_hw (struct clk_hw*) ;
 scalar_t__ cprman_read (struct bcm2835_cprman*,int ) ;
 int cprman_write (struct bcm2835_cprman*,int ,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static int bcm2835_pll_divider_set_rate(struct clk_hw *hw,
     unsigned long rate,
     unsigned long parent_rate)
{
 struct bcm2835_pll_divider *divider = bcm2835_pll_divider_from_hw(hw);
 struct bcm2835_cprman *cprman = divider->cprman;
 const struct bcm2835_pll_divider_data *data = divider->data;
 u32 cm, div, max_div = 1 << A2W_PLL_DIV_BITS;

 div = DIV_ROUND_UP_ULL(parent_rate, rate);

 div = min(div, max_div);
 if (div == max_div)
  div = 0;

 cprman_write(cprman, data->a2w_reg, div);
 cm = cprman_read(cprman, data->cm_reg);
 cprman_write(cprman, data->cm_reg, cm | data->load_mask);
 cprman_write(cprman, data->cm_reg, cm & ~data->load_mask);

 return 0;
}
