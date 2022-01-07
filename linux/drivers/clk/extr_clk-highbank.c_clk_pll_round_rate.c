
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 int clk_pll_calc (unsigned long,unsigned long,int*,int*) ;

__attribute__((used)) static long clk_pll_round_rate(struct clk_hw *hwclk, unsigned long rate,
          unsigned long *parent_rate)
{
 u32 divq, divf;
 unsigned long ref_freq = *parent_rate;

 clk_pll_calc(rate, ref_freq, &divq, &divf);

 return (ref_freq * (divf + 1)) / (1 << divq);
}
