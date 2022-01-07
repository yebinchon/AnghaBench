
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {scalar_t__ thread_id; } ;


 size_t ACPI_MAX_MUTEX ;
 scalar_t__ ACPI_MUTEX_NOT_ACQUIRED ;
 TYPE_1__* acpi_gbl_mutex_info ;
 int acpi_os_printf (char*,int ,char*) ;
 int acpi_ut_get_mutex_name (size_t) ;

void acpi_db_display_locks(void)
{
 u32 i;

 for (i = 0; i < ACPI_MAX_MUTEX; i++) {
  acpi_os_printf("%26s : %s\n", acpi_ut_get_mutex_name(i),
          acpi_gbl_mutex_info[i].thread_id ==
          ACPI_MUTEX_NOT_ACQUIRED ? "Locked" : "Unlocked");
 }
}
