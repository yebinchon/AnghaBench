
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int LGR_TIMER_INTERVAL_SECS ;
 scalar_t__ jiffies ;
 int lgr_timer ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void lgr_timer_set(void)
{
 mod_timer(&lgr_timer, jiffies + LGR_TIMER_INTERVAL_SECS * HZ);
}
