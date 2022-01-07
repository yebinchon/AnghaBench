
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 int cs2000_rate_to_ratio (unsigned long,unsigned long) ;
 long cs2000_ratio_to_rate (int ,unsigned long) ;

__attribute__((used)) static long cs2000_round_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long *parent_rate)
{
 u32 ratio;

 ratio = cs2000_rate_to_ratio(*parent_rate, rate);

 return cs2000_ratio_to_rate(ratio, *parent_rate);
}
