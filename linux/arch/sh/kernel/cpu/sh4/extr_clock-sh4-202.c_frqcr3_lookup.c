
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int ARRAY_SIZE (int*) ;
 int* frqcr3_divisors ;
 int* frqcr3_values ;

__attribute__((used)) static inline int frqcr3_lookup(struct clk *clk, unsigned long rate)
{
 int divisor = clk->parent->rate / rate;
 int i;

 for (i = 0; i < ARRAY_SIZE(frqcr3_divisors); i++)
  if (frqcr3_divisors[i] == divisor)
   return frqcr3_values[i];


 return 5;
}
