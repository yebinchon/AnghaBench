
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;


 scalar_t__ MLB_TMR_EVT_TMCSR_OFS ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int mlb_config_clock_event(struct timer_of *to)
{
 writel_relaxed(0, timer_of_base(to) + MLB_TMR_EVT_TMCSR_OFS);
 return 0;
}
