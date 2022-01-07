
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct bcm2835_cprman {int dummy; } ;
struct bcm2835_clock_data {scalar_t__ int_bits; scalar_t__ frac_bits; int div_reg; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;


 struct bcm2835_clock* bcm2835_clock_from_hw (struct clk_hw*) ;
 unsigned long bcm2835_clock_rate_from_divisor (struct bcm2835_clock*,unsigned long,int ) ;
 int cprman_read (struct bcm2835_cprman*,int ) ;

__attribute__((used)) static unsigned long bcm2835_clock_get_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct bcm2835_clock *clock = bcm2835_clock_from_hw(hw);
 struct bcm2835_cprman *cprman = clock->cprman;
 const struct bcm2835_clock_data *data = clock->data;
 u32 div;

 if (data->int_bits == 0 && data->frac_bits == 0)
  return parent_rate;

 div = cprman_read(cprman, data->div_reg);

 return bcm2835_clock_rate_from_divisor(clock, parent_rate, div);
}
