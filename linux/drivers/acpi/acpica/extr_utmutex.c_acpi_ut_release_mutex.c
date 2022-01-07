
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int acpi_status ;
typedef size_t acpi_mutex_handle ;
struct TYPE_2__ {scalar_t__ thread_id; int mutex; } ;


 int ACPI_DB_MUTEX ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_MAX_MUTEX ;
 scalar_t__ ACPI_MUTEX_NOT_ACQUIRED ;
 size_t ACPI_NUM_MUTEX ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_NOT_ACQUIRED ;
 int AE_OK ;
 int AE_RELEASE_DEADLOCK ;
 TYPE_1__* acpi_gbl_mutex_info ;
 scalar_t__ acpi_os_get_thread_id () ;
 int acpi_os_release_mutex (int ) ;
 int acpi_ut_get_mutex_name (size_t) ;
 int ut_release_mutex ;

acpi_status acpi_ut_release_mutex(acpi_mutex_handle mutex_id)
{
 ACPI_FUNCTION_NAME(ut_release_mutex);

 ACPI_DEBUG_PRINT((ACPI_DB_MUTEX, "Thread %u releasing Mutex [%s]\n",
     (u32)acpi_os_get_thread_id(),
     acpi_ut_get_mutex_name(mutex_id)));

 if (mutex_id > ACPI_MAX_MUTEX) {
  return (AE_BAD_PARAMETER);
 }




 if (acpi_gbl_mutex_info[mutex_id].thread_id == ACPI_MUTEX_NOT_ACQUIRED) {
  ACPI_ERROR((AE_INFO,
       "Mutex [%s] (0x%X) is not acquired, cannot release",
       acpi_ut_get_mutex_name(mutex_id), mutex_id));

  return (AE_NOT_ACQUIRED);
 }
 acpi_gbl_mutex_info[mutex_id].thread_id = ACPI_MUTEX_NOT_ACQUIRED;

 acpi_os_release_mutex(acpi_gbl_mutex_info[mutex_id].mutex);
 return (AE_OK);
}
