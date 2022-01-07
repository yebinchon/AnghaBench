
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec_if_positive (int *) ;
 int pm_abort_suspend ;

void pm_system_cancel_wakeup(void)
{
 atomic_dec_if_positive(&pm_abort_suspend);
}
