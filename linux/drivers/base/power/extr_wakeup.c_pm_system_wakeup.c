
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int pm_abort_suspend ;
 int s2idle_wake () ;

void pm_system_wakeup(void)
{
 atomic_inc(&pm_abort_suspend);
 s2idle_wake();
}
