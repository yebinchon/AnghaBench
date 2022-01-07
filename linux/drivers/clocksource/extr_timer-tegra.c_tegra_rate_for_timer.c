
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;


 unsigned long TIMER_1MHz ;
 unsigned long timer_of_rate (struct timer_of*) ;

__attribute__((used)) static inline unsigned long tegra_rate_for_timer(struct timer_of *to,
       bool tegra20)
{




 if (tegra20)
  return TIMER_1MHz;

 return timer_of_rate(to);
}
