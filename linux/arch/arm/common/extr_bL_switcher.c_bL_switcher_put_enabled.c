
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bL_switcher_activation_lock ;
 int mutex_unlock (int *) ;

void bL_switcher_put_enabled(void)
{
 mutex_unlock(&bL_switcher_activation_lock);
}
