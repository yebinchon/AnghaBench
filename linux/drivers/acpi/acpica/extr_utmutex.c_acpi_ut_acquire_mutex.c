
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ acpi_thread_id ;
typedef int acpi_status ;
typedef size_t acpi_mutex_handle ;
struct TYPE_2__ {scalar_t__ thread_id; int use_count; int mutex; } ;


 int ACPI_DB_MUTEX ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_MAX_MUTEX ;
 size_t ACPI_NUM_MUTEX ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_WAIT_FOREVER ;
 int AE_ACQUIRE_DEADLOCK ;
 int AE_ALREADY_ACQUIRED ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 TYPE_1__* acpi_gbl_mutex_info ;
 int acpi_os_acquire_mutex (int ,int ) ;
 scalar_t__ acpi_os_get_thread_id () ;
 int acpi_ut_get_mutex_name (size_t) ;
 int ut_acquire_mutex ;

acpi_status acpi_ut_acquire_mutex(acpi_mutex_handle mutex_id)
{
 acpi_status status;
 acpi_thread_id this_thread_id;

 ACPI_FUNCTION_NAME(ut_acquire_mutex);

 if (mutex_id > ACPI_MAX_MUTEX) {
  return (AE_BAD_PARAMETER);
 }

 this_thread_id = acpi_os_get_thread_id();
 ACPI_DEBUG_PRINT((ACPI_DB_MUTEX,
     "Thread %u attempting to acquire Mutex [%s]\n",
     (u32)this_thread_id,
     acpi_ut_get_mutex_name(mutex_id)));

 status =
     acpi_os_acquire_mutex(acpi_gbl_mutex_info[mutex_id].mutex,
      ACPI_WAIT_FOREVER);
 if (ACPI_SUCCESS(status)) {
  ACPI_DEBUG_PRINT((ACPI_DB_MUTEX,
      "Thread %u acquired Mutex [%s]\n",
      (u32)this_thread_id,
      acpi_ut_get_mutex_name(mutex_id)));

  acpi_gbl_mutex_info[mutex_id].use_count++;
  acpi_gbl_mutex_info[mutex_id].thread_id = this_thread_id;
 } else {
  ACPI_EXCEPTION((AE_INFO, status,
    "Thread %u could not acquire Mutex [%s] (0x%X)",
    (u32)this_thread_id,
    acpi_ut_get_mutex_name(mutex_id), mutex_id));
 }

 return (status);
}
