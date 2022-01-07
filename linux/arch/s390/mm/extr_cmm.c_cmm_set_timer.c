
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ cmm_timed_pages_target ;
 int cmm_timeout_seconds ;
 int cmm_timer ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void cmm_set_timer(void)
{
 if (cmm_timed_pages_target <= 0 || cmm_timeout_seconds <= 0) {
  if (timer_pending(&cmm_timer))
   del_timer(&cmm_timer);
  return;
 }
 mod_timer(&cmm_timer, jiffies + cmm_timeout_seconds * HZ);
}
