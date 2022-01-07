
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bL_switcher_activation_lock ;
 int bL_switcher_active ;
 int mutex_lock (int *) ;

bool bL_switcher_get_enabled(void)
{
 mutex_lock(&bL_switcher_activation_lock);

 return bL_switcher_active;
}
