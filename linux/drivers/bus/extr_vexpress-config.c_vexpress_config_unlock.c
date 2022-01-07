
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_unlock (int *) ;
 int vexpress_config_mutex ;

void vexpress_config_unlock(void *arg)
{
 mutex_unlock(&vexpress_config_mutex);
}
