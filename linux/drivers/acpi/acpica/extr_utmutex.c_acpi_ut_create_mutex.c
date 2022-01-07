
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int acpi_status ;
typedef size_t acpi_mutex_handle ;
struct TYPE_2__ {scalar_t__ use_count; int thread_id; int mutex; } ;


 int ACPI_FUNCTION_TRACE_U32 (int ,size_t) ;
 int ACPI_MUTEX_NOT_ACQUIRED ;
 int AE_OK ;
 TYPE_1__* acpi_gbl_mutex_info ;
 int acpi_os_create_mutex (int *) ;
 int return_ACPI_STATUS (int ) ;
 int ut_create_mutex ;

__attribute__((used)) static acpi_status acpi_ut_create_mutex(acpi_mutex_handle mutex_id)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE_U32(ut_create_mutex, mutex_id);

 if (!acpi_gbl_mutex_info[mutex_id].mutex) {
  status =
      acpi_os_create_mutex(&acpi_gbl_mutex_info[mutex_id].mutex);
  acpi_gbl_mutex_info[mutex_id].thread_id =
      ACPI_MUTEX_NOT_ACQUIRED;
  acpi_gbl_mutex_info[mutex_id].use_count = 0;
 }

 return_ACPI_STATUS(status);
}
