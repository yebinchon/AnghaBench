
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;


 long EINVAL ;
 int ingenic_tcu_get_prescale (unsigned long,unsigned long) ;

__attribute__((used)) static long ingenic_tcu_round_rate(struct clk_hw *hw, unsigned long req_rate,
  unsigned long *parent_rate)
{
 unsigned long rate = *parent_rate;
 u8 prescale;

 if (req_rate > rate)
  return -EINVAL;

 prescale = ingenic_tcu_get_prescale(rate, req_rate);

 return rate >> (prescale * 2);
}
