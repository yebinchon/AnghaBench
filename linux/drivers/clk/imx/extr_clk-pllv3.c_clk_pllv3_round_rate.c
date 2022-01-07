
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;



__attribute__((used)) static long clk_pllv3_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *prate)
{
 unsigned long parent_rate = *prate;

 return (rate >= parent_rate * 22) ? parent_rate * 22 :
         parent_rate * 20;
}
