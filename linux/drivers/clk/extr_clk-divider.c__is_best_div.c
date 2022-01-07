
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CLK_DIVIDER_ROUND_CLOSEST ;
 scalar_t__ abs (unsigned long) ;

__attribute__((used)) static bool _is_best_div(unsigned long rate, unsigned long now,
    unsigned long best, unsigned long flags)
{
 if (flags & CLK_DIVIDER_ROUND_CLOSEST)
  return abs(rate - now) < abs(rate - best);

 return now <= rate && now > best;
}
