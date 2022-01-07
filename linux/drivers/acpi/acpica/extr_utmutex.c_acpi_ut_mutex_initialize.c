
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_NUM_MUTEX ;
 int acpi_gbl_gpe_lock ;
 int acpi_gbl_hardware_lock ;
 int acpi_gbl_namespace_rw_lock ;
 int acpi_gbl_osi_mutex ;
 int acpi_gbl_reference_count_lock ;
 int acpi_os_create_lock (int *) ;
 int acpi_os_create_mutex (int *) ;
 int acpi_os_create_raw_lock (int *) ;
 int acpi_ut_create_mutex (scalar_t__) ;
 int acpi_ut_create_rw_lock (int *) ;
 int return_ACPI_STATUS (int ) ;
 int ut_mutex_initialize ;

acpi_status acpi_ut_mutex_initialize(void)
{
 u32 i;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ut_mutex_initialize);



 for (i = 0; i < ACPI_NUM_MUTEX; i++) {
  status = acpi_ut_create_mutex(i);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }
 }



 status = acpi_os_create_lock (&acpi_gbl_gpe_lock);
 if (ACPI_FAILURE (status)) {
  return_ACPI_STATUS (status);
 }

 status = acpi_os_create_raw_lock(&acpi_gbl_hardware_lock);
 if (ACPI_FAILURE (status)) {
  return_ACPI_STATUS (status);
 }

 status = acpi_os_create_lock(&acpi_gbl_reference_count_lock);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status = acpi_os_create_mutex(&acpi_gbl_osi_mutex);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status = acpi_ut_create_rw_lock(&acpi_gbl_namespace_rw_lock);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 return_ACPI_STATUS(status);
}
