
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dpm_list_mtx ;
 int mutex_unlock (int *) ;

void device_pm_unlock(void)
{
 mutex_unlock(&dpm_list_mtx);
}
