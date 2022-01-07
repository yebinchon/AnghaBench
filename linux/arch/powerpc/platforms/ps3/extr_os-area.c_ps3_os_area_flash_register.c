
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_os_area_flash_ops {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int os_area_flash_mutex ;
 struct ps3_os_area_flash_ops const* os_area_flash_ops ;

void ps3_os_area_flash_register(const struct ps3_os_area_flash_ops *ops)
{
 mutex_lock(&os_area_flash_mutex);
 os_area_flash_ops = ops;
 mutex_unlock(&os_area_flash_mutex);
}
