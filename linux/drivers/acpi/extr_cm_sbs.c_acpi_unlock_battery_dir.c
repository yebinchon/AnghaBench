
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;


 int ACPI_BATTERY_CLASS ;
 int * acpi_battery_dir ;
 int acpi_root_dir ;
 int cm_sbs_mutex ;
 scalar_t__ lock_battery_dir_cnt ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_proc_entry (int ,int ) ;

void acpi_unlock_battery_dir(struct proc_dir_entry *acpi_battery_dir_param)
{
 mutex_lock(&cm_sbs_mutex);
 if (acpi_battery_dir_param)
  lock_battery_dir_cnt--;
 if (lock_battery_dir_cnt == 0 && acpi_battery_dir_param
     && acpi_battery_dir) {
  remove_proc_entry(ACPI_BATTERY_CLASS, acpi_root_dir);
  acpi_battery_dir = ((void*)0);
 }
 mutex_unlock(&cm_sbs_mutex);
 return;
}
