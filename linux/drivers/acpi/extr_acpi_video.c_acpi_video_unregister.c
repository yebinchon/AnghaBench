
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_bus_unregister_driver (int *) ;
 int acpi_video_bus ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ register_count ;
 int register_count_mutex ;

void acpi_video_unregister(void)
{
 mutex_lock(&register_count_mutex);
 if (register_count) {
  acpi_bus_unregister_driver(&acpi_video_bus);
  register_count = 0;
 }
 mutex_unlock(&register_count_mutex);
}
