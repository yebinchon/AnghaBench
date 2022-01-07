
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 long alpha_huayra_pll_round_rate (unsigned long,unsigned long,int *,int *) ;

__attribute__((used)) static long alpha_pll_huayra_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *prate)
{
 u32 l, a;

 return alpha_huayra_pll_round_rate(rate, *prate, &l, &a);
}
