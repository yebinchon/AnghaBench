
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuidle_install_idle_handler () ;
 int cpuidle_lock ;
 int mutex_unlock (int *) ;

void cpuidle_resume_and_unlock(void)
{
 cpuidle_install_idle_handler();
 mutex_unlock(&cpuidle_lock);
}
