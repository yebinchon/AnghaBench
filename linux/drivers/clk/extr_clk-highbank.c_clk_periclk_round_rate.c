
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;



__attribute__((used)) static long clk_periclk_round_rate(struct clk_hw *hwclk, unsigned long rate,
       unsigned long *parent_rate)
{
 u32 div;

 div = *parent_rate / rate;
 div++;
 div &= ~0x1;

 return *parent_rate / div;
}
