
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_NUM_MUTEX ;
 int acpi_gbl_gpe_lock ;
 int acpi_gbl_hardware_lock ;
 int acpi_gbl_namespace_rw_lock ;
 int acpi_gbl_osi_mutex ;
 int acpi_gbl_reference_count_lock ;
 int acpi_os_delete_lock (int ) ;
 int acpi_os_delete_mutex (int ) ;
 int acpi_os_delete_raw_lock (int ) ;
 int acpi_ut_delete_mutex (scalar_t__) ;
 int acpi_ut_delete_rw_lock (int *) ;
 int return_VOID ;
 int ut_mutex_terminate ;

void acpi_ut_mutex_terminate(void)
{
 u32 i;

 ACPI_FUNCTION_TRACE(ut_mutex_terminate);



 for (i = 0; i < ACPI_NUM_MUTEX; i++) {
  acpi_ut_delete_mutex(i);
 }

 acpi_os_delete_mutex(acpi_gbl_osi_mutex);



 acpi_os_delete_lock(acpi_gbl_gpe_lock);
 acpi_os_delete_raw_lock(acpi_gbl_hardware_lock);
 acpi_os_delete_lock(acpi_gbl_reference_count_lock);



 acpi_ut_delete_rw_lock(&acpi_gbl_namespace_rw_lock);
 return_VOID;
}
