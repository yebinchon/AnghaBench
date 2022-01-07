
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;


 scalar_t__ MLB_TMR_EVT_TMRLR1_OFS ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static void mlb_evt_timer_register_count(struct timer_of *to, unsigned long cnt)
{
 writel_relaxed(cnt, timer_of_base(to) + MLB_TMR_EVT_TMRLR1_OFS);
}
