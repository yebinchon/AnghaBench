
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct semaphore {int dummy; } ;
typedef int acpi_status ;
typedef int **** acpi_handle ;


 int ACPI_DB_MUTEX ;
 int ACPI_DEBUG_PRINT (int ) ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 struct semaphore* acpi_os_allocate_zeroed (int) ;
 int sema_init (struct semaphore*,int ) ;

acpi_status
acpi_os_create_semaphore(u32 max_units, u32 initial_units, acpi_handle * handle)
{
 struct semaphore *sem = ((void*)0);

 sem = acpi_os_allocate_zeroed(sizeof(struct semaphore));
 if (!sem)
  return AE_NO_MEMORY;

 sema_init(sem, initial_units);

 *handle = (acpi_handle *) sem;

 ACPI_DEBUG_PRINT((ACPI_DB_MUTEX, "Creating semaphore[%p|%d].\n",
     *handle, initial_units));

 return AE_OK;
}
