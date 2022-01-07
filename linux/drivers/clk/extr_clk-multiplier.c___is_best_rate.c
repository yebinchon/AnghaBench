
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CLK_MULTIPLIER_ROUND_CLOSEST ;
 scalar_t__ abs (unsigned long) ;

__attribute__((used)) static bool __is_best_rate(unsigned long rate, unsigned long new,
      unsigned long best, unsigned long flags)
{
 if (flags & CLK_MULTIPLIER_ROUND_CLOSEST)
  return abs(rate - new) < abs(rate - best);

 return new >= rate && new < best;
}
