
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;



__attribute__((used)) static long clk_corediv_round_rate(struct clk_hw *hwclk, unsigned long rate,
          unsigned long *parent_rate)
{

 u32 div;

 div = *parent_rate / rate;
 if (div < 4)
  div = 4;
 else if (div > 6)
  div = 8;

 return *parent_rate / div;
}
