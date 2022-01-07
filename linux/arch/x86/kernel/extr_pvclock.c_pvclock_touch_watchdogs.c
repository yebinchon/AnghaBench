
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clocksource_touch_watchdog () ;
 int rcu_cpu_stall_reset () ;
 int reset_hung_task_detector () ;
 int touch_softlockup_watchdog_sync () ;

void pvclock_touch_watchdogs(void)
{
 touch_softlockup_watchdog_sync();
 clocksource_touch_watchdog();
 rcu_cpu_stall_reset();
 reset_hung_task_detector();
}
