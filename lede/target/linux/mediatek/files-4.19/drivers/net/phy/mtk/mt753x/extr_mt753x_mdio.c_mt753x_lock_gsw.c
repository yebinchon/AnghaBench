
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mt753x_devs_lock ;
 int mutex_lock (int *) ;

void mt753x_lock_gsw(void)
{
 mutex_lock(&mt753x_devs_lock);
}
