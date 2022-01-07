
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk_hw {int dummy; } ;


 long EINVAL ;
 int ti_fapll_set_div_mult (unsigned long,unsigned long,unsigned long*,unsigned long*) ;

__attribute__((used)) static long ti_fapll_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *parent_rate)
{
 u32 pre_div_p, mult_n;
 int error;

 if (!rate)
  return -EINVAL;

 error = ti_fapll_set_div_mult(rate, *parent_rate,
          &pre_div_p, &mult_n);
 if (error)
  return error;

 rate = *parent_rate / pre_div_p;
 rate *= mult_n;

 return rate;
}
