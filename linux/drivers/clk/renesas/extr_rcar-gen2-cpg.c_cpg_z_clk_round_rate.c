
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clk_hw {int dummy; } ;


 unsigned int clamp (unsigned int,unsigned int,unsigned int) ;
 unsigned int div_u64 (int,unsigned long) ;

__attribute__((used)) static long cpg_z_clk_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *parent_rate)
{
 unsigned long prate = *parent_rate;
 unsigned int mult;

 if (!prate)
  prate = 1;

 mult = div_u64((u64)rate * 32, prate);
 mult = clamp(mult, 1U, 32U);

 return *parent_rate / 32 * mult;
}
