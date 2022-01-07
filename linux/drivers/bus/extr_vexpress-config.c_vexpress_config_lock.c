
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int vexpress_config_mutex ;

void vexpress_config_lock(void *arg)
{
 mutex_lock(&vexpress_config_mutex);
}
