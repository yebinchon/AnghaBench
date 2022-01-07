
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_multiplier {int flags; } ;


 int CLK_MULTIPLIER_ROUND_CLOSEST ;
 unsigned long DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long __get_mult(struct clk_multiplier *mult,
    unsigned long rate,
    unsigned long parent_rate)
{
 if (mult->flags & CLK_MULTIPLIER_ROUND_CLOSEST)
  return DIV_ROUND_CLOSEST(rate, parent_rate);

 return rate / parent_rate;
}
