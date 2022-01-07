
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct semaphore {int dummy; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 int ACPI_DB_MUTEX ;
 int ACPI_DEBUG_PRINT (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AE_SUPPORT ;
 int acpi_os_initialized ;
 int up (struct semaphore*) ;

acpi_status acpi_os_signal_semaphore(acpi_handle handle, u32 units)
{
 struct semaphore *sem = (struct semaphore *)handle;

 if (!acpi_os_initialized)
  return AE_OK;

 if (!sem || (units < 1))
  return AE_BAD_PARAMETER;

 if (units > 1)
  return AE_SUPPORT;

 ACPI_DEBUG_PRINT((ACPI_DB_MUTEX, "Signaling semaphore[%p|%d]\n", handle,
     units));

 up(sem);

 return AE_OK;
}
