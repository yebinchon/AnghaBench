
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuidle_lock ;
 int cpuidle_uninstall_idle_handler () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cpuidle_pause(void)
{
 mutex_lock(&cpuidle_lock);
 cpuidle_uninstall_idle_handler();
 mutex_unlock(&cpuidle_lock);
}
