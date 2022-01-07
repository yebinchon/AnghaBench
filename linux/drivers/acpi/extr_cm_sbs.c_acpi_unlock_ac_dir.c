
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;


 int ACPI_AC_CLASS ;
 int * acpi_ac_dir ;
 int acpi_root_dir ;
 int cm_sbs_mutex ;
 scalar_t__ lock_ac_dir_cnt ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_proc_entry (int ,int ) ;

void acpi_unlock_ac_dir(struct proc_dir_entry *acpi_ac_dir_param)
{
 mutex_lock(&cm_sbs_mutex);
 if (acpi_ac_dir_param)
  lock_ac_dir_cnt--;
 if (lock_ac_dir_cnt == 0 && acpi_ac_dir_param && acpi_ac_dir) {
  remove_proc_entry(ACPI_AC_CLASS, acpi_root_dir);
  acpi_ac_dir = ((void*)0);
 }
 mutex_unlock(&cm_sbs_mutex);
}
