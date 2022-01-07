
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 long EINVAL ;
 long calc_rate (int ,unsigned long) ;
 int calc_reg (unsigned long,unsigned long) ;

__attribute__((used)) static long zx_audio_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 u32 reg;

 if (rate * 2 > *prate)
  return -EINVAL;

 reg = calc_reg(*prate, rate);
 return calc_rate(reg, *prate);
}
